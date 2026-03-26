class Ipb < Formula
  include Language::Python::Virtualenv

  desc "Incremental iCloud Photos backup CLI for macOS"
  homepage "https://github.com/smartbartdev/icloud-photos-sync"
  url "https://github.com/smartbartdev/icloud-photos-sync/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "f6c912f955e640a1802558d697faa63042221c285ff3ad1f64edc9e3b0d6c0b3"
  license "MIT"

  depends_on "python@3.11"

  resource "backports.tarfile" do
    url "https://files.pythonhosted.org/packages/b9/fa/123043af240e49752f1c4bd24da5053b6bd00cad78c2be53c0d1e8b975bc/backports.tarfile-1.2.0-py3-none-any.whl"
    sha256 "77e284d754527b01fb1e6fa8a1afe577858ebe4e9dad8919e34c862cb399bc34"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/9a/3c/c17fb3ca2d9c3acff52e30b309f538586f9f5b9c9cf454f3845fc9af4881/certifi-2026.2.25-py3-none-any.whl"
    sha256 "027692e4402ad994f1c42e52a4997a9763c646b73e4096e4d5d6db8af1d6f0fa"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/4f/8b/f0e4c441227ba756aafbe78f117485b25bb26b1c059d01f137fa6d14896b/cffi-2.0.0-cp311-cp311-macosx_11_0_arm64.whl"
    sha256 "2de9a304e27f7596cd03d16f1b7c72219bd944e99cc52b84d0145aefb07cbd3c"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/62/28/ff6f234e628a2de61c458be2779cb182bc03f6eec12200d4a525bbfc9741/charset_normalizer-3.4.6-cp311-cp311-macosx_10_9_universal2.whl"
    sha256 "82060f995ab5003a2d6e0f4ad29065b7672b6593c8c63559beefe5b443242c3e"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/98/78/01c019cdb5d6498122777c1a43056ebb3ebfeef2076d9d026bfe15583b2b/click-8.3.1-py3-none-any.whl"
    sha256 "981153a64e25f12d547d3426c367a4857371575ee7ad18df2a6183ab0545b2a6"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/47/23/9285e15e3bc57325b0a72e592921983a701efc1ee8f91c06c5f0235d86d9/cryptography-46.0.6-cp311-abi3-macosx_10_9_universal2.whl"
    sha256 "64235194bad039a10bb6d2d930ab3323baaec67e2ce36215fd0952fad0930ca8"
  end

  resource "fido2" do
    url "https://files.pythonhosted.org/packages/e2/ab/d0fa89cc4b982800dd88daa799612f11642bf9393851715d9eaeba3cfcac/fido2-2.1.1-py3-none-any.whl"
    sha256 "f85c16c8084abf6530b6c6ec3a0cf8575943321842e06916686943a8b784182c"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/0e/61/66938bbb5fc52dbdf84594873d5b51fb1f7c7794e9c0f5bd885f30bc507b/idna-3.11-py3-none-any.whl"
    sha256 "771a87f49d9defaf64091e6e6fe9c18d4833f140bd19464795bc32d966ca37ea"
  end

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/38/3d/2d244233ac4f76e38533cfcb2991c9eb4c7bf688ae0a036d30725b8faafe/importlib_metadata-9.0.0-py3-none-any.whl"
    sha256 "2d21d1cc5a017bd0559e36150c21c830ab1dc304dedd1b7ea85d20f45ef3edd7"
  end

  resource "jaraco.classes" do
    url "https://files.pythonhosted.org/packages/7f/66/b15ce62552d84bbfcec9a4873ab79d993a1dd4edb922cbfccae192bd5b5f/jaraco.classes-3.4.0-py3-none-any.whl"
    sha256 "f662826b6bed8cace05e7ff873ce0f9283b5c924470fe664fff1c2f00f581790"
  end

  resource "jaraco.context" do
    url "https://files.pythonhosted.org/packages/f2/58/bc8954bda5fcda97bd7c19be11b85f91973d67a706ed4a3aec33e7de22db/jaraco_context-6.1.2-py3-none-any.whl"
    sha256 "bf8150b79a2d5d91ae48629d8b427a8f7ba0e1097dd6202a9059f29a36379535"
  end

  resource "jaraco.functools" do
    url "https://files.pythonhosted.org/packages/fd/c4/813bb09f0985cb21e959f21f2464169eca882656849adf727ac7bb7e1767/jaraco_functools-4.4.0-py3-none-any.whl"
    sha256 "9eec1e36f45c818d9bf307c8948eb03b2b56cd44087b3cdc989abca1f20b9176"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/81/db/e655086b7f3a705df045bf0933bdd9c2f79bb3c97bfef1384598bb79a217/keyring-25.7.0-py3-none-any.whl"
    sha256 "be4a0b195f149690c166e850609a477c532ddbfbaed96a404d4e43f8d5e2689f"
  end

  resource "keyrings.alt" do
    url "https://files.pythonhosted.org/packages/4a/0d/9c59313ab43d0858a9a665e80763bd830dc78d5f379afc3815e123c486c2/keyrings.alt-5.0.2-py3-none-any.whl"
    sha256 "6be74693192f3f37bbb752bfac9b86e6177076b17d2ac12a390f1d6abff8ac7c"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/a4/8e/469e5a4a2f5855992e425f3cb33804cc07bf18d48f2db061aec61ce50270/more_itertools-10.8.0-py3-none-any.whl"
    sha256 "52d4362373dcf7c52546bc4af9a86ee7c4579df9a8dc268be0a2f949d376cc9b"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0c/c3/44f3fbbfa403ea2a7c779186dc20772604442dde72947e7d01069cbe98e3/pycparser-3.0-py3-none-any.whl"
    sha256 "b727414169a36b7d524c1c3e31839a521725078d7b2ff038656844266160a992"
  end

  resource "pyicloud" do
    url "https://files.pythonhosted.org/packages/36/d2/875b873d54d3bc7dad37b50fd255b357f8adaa105af5bb2b02443cafc783/pyicloud-2.4.1-py3-none-any.whl"
    sha256 "a767ada7cc2961428f8c2d0ce327102ae7666e3835610945409247fcf9d85e68"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/56/5d/c814546c2333ceea4ba42262d8c4d55763003e767fa169adc693bd524478/requests-2.33.0-py3-none-any.whl"
    sha256 "3324635456fa185245e24865e810cecec7b4caf933d7eb133dcde67d48cee69b"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/b7/ce/149a00dd41f10bc29e5921b496af8b574d8413afcd5e30dfa0ed46c2cc5e/six-1.17.0-py2.py3-none-any.whl"
    sha256 "4721f391ed90541fddacab5acf947aa0d3dc7d27b2e1e8eda2be8970586c3274"
  end

  resource "srp" do
    url "https://files.pythonhosted.org/packages/89/75/5352c3ebd26e7d119042ae8de07354435a19c77fa2b44058fa97a1416783/srp-1.0.22-py3-none-any.whl"
    sha256 "35aa8af053285a35683eb37182dcb2e46dbd85c7075d28e139f200d6bf16ea43"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/c2/14/e2a54fabd4f08cd7af1c07030603c3356b74da07f7cc056e600436edfa17/tzlocal-5.3.1-py3-none-any.whl"
    sha256 "eb1a66c3ef5847adf7a834f1be0800581b683b5608e74f86ecbcef8ab91bb85d"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/39/08/aaaad47bc4e9dc8c725e68f9d04865dbcb2052843ff09c97b08904852d84/urllib3-2.6.3-py3-none-any.whl"
    sha256 "bf272323e553dfb2e87d9bfd225ca7b0f467b919d7bbd355436d3fd37cb0acd4"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/2e/54/647ade08bf0db230bfea292f893923872fd20be6ac6f53b2b936ba839d75/zipp-3.23.0-py3-none-any.whl"
    sha256 "071652d6115ed432f5ce1d34c336c0adfd6a884660d1e9712a256d3d3bd4b14e"
  end

  def install
    venv = virtualenv_create(libexec, "python3.11")
    resources.each do |r|
      r.stage do
        wheel = Dir["*.whl"].first
        if wheel
          venv.pip_install wheel
        else
          venv.pip_install Pathname.pwd
        end
      end
    end
    venv.pip_install buildpath
    bin.install_symlink libexec/"bin/ipb"
  end

  test do
    assert_match "iCloud photo backup CLI", shell_output("#{bin}/ipb --help")
  end
end
