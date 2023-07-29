# generated by clj2nix-1.0.5
{ pkgs ? import <nixpkgs> {} }:

  let repos = [
        "https://repo1.maven.org/maven2/"
        "https://repo.clojars.org/"
        "http://oss.sonatype.org/content/repositories/releases/"
        "http://oss.sonatype.org/content/repositories/public/"
        "http://repo.typesafe.com/typesafe/releases/"
      ];

  in rec {
      makePaths = {extraClasspaths ? []}: (builtins.map (dep: if builtins.hasAttr "jar" dep.path then dep.path.jar else dep.path) packages) ++ extraClasspaths;
      makeClasspaths = {extraClasspaths ? []}: builtins.concatStringsSep ":" (makePaths {inherit extraClasspaths;});

      packages = [
  {
    name = "javax.inject/javax.inject";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "javax.inject";
      groupId = "javax.inject";
      sha512 = "e126b7ccf3e42fd1984a0beef1004a7269a337c202e59e04e8e2af714280d2f2d8d2ba5e6f59481b8dcd34aaf35c966a688d0b48ec7e96f102c274dc0d3b381e";
      version = "1";
    };
  }

  {
    name = "org.clojure/data.json";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "data.json";
      groupId = "org.clojure";
      sha512 = "04b7c0c90cb26d643a0b3e7e1ffa2d2d423e977c1454ee5ea7c2e75547ecbc113838df17b797902a975f5ea2184a81a45b605a4d82970805e2bbb02feebc578d";
      version = "2.4.0";
    };
  }

  {
    name = "org.clojure/clojure";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "clojure";
      groupId = "org.clojure";
      sha512 = "1925300a0fe4cc9fc3985910bb04ae65a19ce274dacc5ec76e708cfa87a7952a0a77282b083d0aebb2206afff619af73a57f0d661a3423601586f0829cc7956b";
      version = "1.11.1";
    };
  }

  {
    name = "net.cgrand/sjacket";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "sjacket";
      groupId = "net.cgrand";
      sha512 = "34a359a0a633f116147e5bd52d4f4a9cd755636ce0e8abf155da9c3f04b07f93bbbf7c1f8e370db922e14da0efd36a5b127ff9e564141ca7a843f0498a8b860a";
      version = "0.1.1";
    };
  }

  {
    name = "clojupyter/clojupyter";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "clojupyter";
      groupId = "clojupyter";
      sha512 = "9a4f001cbde7a4de2d27859b25e508ba649225acf9dabad4c1c274e86674e0dcde250a49cacd0767bb99f5b15a61e2f1c829fb2fe7b7dfc4b87681b7ae0b04ae";
      version = "0.3.6";
    };
  }

  {
    name = "commons-codec/commons-codec";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-codec";
      groupId = "commons-codec";
      sha512 = "b65531ead8500493e3dd14a860224851b80f438fc53bf8868b443a0557d839a2b0c868e4fedcf99579ae04b6b2bbd8cdb37f9921ad785983c37569aa9d2e8102";
      version = "1.9";
    };
  }

  {
    name = "org.clojure/tools.analyzer";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.analyzer";
      groupId = "org.clojure";
      sha512 = "c51752a714848247b05c6f98b54276b4fe8fd44b3d970070b0f30cd755ac6656030fd8943a1ffd08279af8eeff160365be47791e48f05ac9cc2488b6e2dfe504";
      version = "1.1.0";
    };
  }

  {
    name = "org.codehaus.plexus/plexus-component-annotations";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-component-annotations";
      groupId = "org.codehaus.plexus";
      sha512 = "e20aa9fdb3fda4126f55ef45c36362138c6554ede40fa266ff6b63fe1c3b4d699f9eb95793f26527e096ec7567874aa7af5fe84124815729fdb2d4abaa9ddea8";
      version = "1.7.1";
    };
  }

  {
    name = "org.apache.commons/commons-compress";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-compress";
      groupId = "org.apache.commons";
      sha512 = "f3e077ff7f69992961d744dc513eca93606e472e3733657636808a7f50c17f39e3de8367a1af7972cb158f05725808627b6232585a81f197c0da3eff0336913e";
      version = "1.8";
    };
  }

  {
    name = "org.apache.commons/commons-lang3";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-lang3";
      groupId = "org.apache.commons";
      sha512 = "9e6ff20e891b6835d5926c90f237d55931e75723c8b88d6417926393e077e71013dab006372d34a6b5801e6ca3ce080a00f202cba700cab5aabfc17bbbdcab36";
      version = "3.5";
    };
  }

  {
    name = "org.clojure/core.specs.alpha";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "core.specs.alpha";
      groupId = "org.clojure";
      sha512 = "f521f95b362a47bb35f7c85528c34537f905fb3dd24f2284201e445635a0df701b35d8419d53c6507cc78d3717c1f83cda35ea4c82abd8943cd2ab3de3fcad70";
      version = "0.2.62";
    };
  }

  {
    name = "org.tukaani/xz";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "xz";
      groupId = "org.tukaani";
      sha512 = "c5c130bf22f24f61b57fc0c6243e7f961ca2a8928416e8bb288aec6650c1c1c06ace4383913cd1277fc6785beb9a74458807ea7e3d6b2e09189cfaf2fb9ab7e1";
      version = "1.5";
    };
  }

  {
    name = "org.zeromq/jeromq";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jeromq";
      groupId = "org.zeromq";
      sha512 = "bd502d345926160b1a09e45f60eb81254dc67d6d9d7b79e025c08018dd16a18d32ff85b2440c352d530e61c96cd3b2d88fee2a8a912b436015ed31039e308ff4";
      version = "0.5.2";
    };
  }

  {
    name = "org.clojure/spec.alpha";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "spec.alpha";
      groupId = "org.clojure";
      sha512 = "ddfe4fa84622abd8ac56e2aa565a56e6bdc0bf330f377ff3e269ddc241bb9dbcac332c13502dfd4c09c2c08fe24d8d2e8cf3d04a1bc819ca5657b4e41feaa7c2";
      version = "0.3.218";
    };
  }

  {
    name = "pandect/pandect";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "pandect";
      groupId = "pandect";
      sha512 = "6179967af34e1abbe0dda2bd0961f101d016df6b1ce5bf4bb823794b07ee551d245d09e957a9c47bc3a15d306cca80ad1b9b11be99e1b3feb245c26e1b9154a3";
      version = "1.0.2";
    };
  }

  {
    name = "org.clojure/tools.cli";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.cli";
      groupId = "org.clojure";
      sha512 = "1d88aa03eb6a664bf2c0ce22c45e7296d54d716e29b11904115be80ea1661623cf3e81fc222d164047058239010eb678af92ffedc7c3006475cceb59f3b21265";
      version = "1.0.206";
    };
  }

  {
    name = "com.taoensso/encore";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "encore";
      groupId = "com.taoensso";
      sha512 = "43dbec081c4ad7b21526371bc78844877d50dd08580c4c039c4dac7e854247a6b145bda835460863fa91d270e81783ddcdad3aaa1a902575be5b21ac0a95c7d0";
      version = "3.21.0";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-transport-wagon";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-transport-wagon";
      groupId = "org.apache.maven.resolver";
      sha512 = "b7a4dcd2f9bb39bfd561e9b2a8fc087bd9e7e59136ea7787341c173fa22c6b8e9370117ed6c30b0c930dd5b188fab2f2b060042861df19e79772a74c703fcf64";
      version = "1.0.3";
    };
  }

  {
    name = "org.slf4j/jcl-over-slf4j";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jcl-over-slf4j";
      groupId = "org.slf4j";
      sha512 = "17aca766b01f136d39bda982a6046d01d296ee076d9628e9776256bd931bbd88437377d5f1cc196d75bd7fa1672dd131311dbf567b4c3a618dd538a6905fbb64";
      version = "2.0.3";
    };
  }

  {
    name = "org.clojure/tools.analyzer.jvm";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.analyzer.jvm";
      groupId = "org.clojure";
      sha512 = "36ad50a7a79c47dea16032fc4b927bd7b56b8bedcbd20cc9c1b9c85edede3a455369b8806509b56a48457dcd32e1f708f74228bce2b4492bd6ff6fc4f1219d56";
      version = "1.2.2";
    };
  }

  {
    name = "org.apache.maven.wagon/wagon-provider-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "wagon-provider-api";
      groupId = "org.apache.maven.wagon";
      sha512 = "4571002ad5bfc0442bb2eaf32ec42675dc0a179413230615475842bba12fb561159ffc0213127cf241088641a218627e84049b715b9e71ed83d960f4f09da985";
      version = "3.0.0";
    };
  }

  {
    name = "io.pedestal/pedestal.log";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "pedestal.log";
      groupId = "io.pedestal";
      sha512 = "229c6c73dc7ec39aee15f54ce81cf2b33301e444241f2dff2066b4c10ff47968f3caa95a8a918601e8f3e7563b34da6925e533615e7ce8b1f39bdb97ca082757";
      version = "0.5.10";
    };
  }

  {
    name = "com.fasterxml.jackson.dataformat/jackson-dataformat-cbor";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jackson-dataformat-cbor";
      groupId = "com.fasterxml.jackson.dataformat";
      sha512 = "b6e16c43fb3e71f82f8e7dc558f53cbcc8fea31efa59f40d22220f6e40167cf32c150efa18a81f839008d6a042e201bf17d8fd52a4fecbe8f356454f2d6a6170";
      version = "2.13.3";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-transport-http";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-transport-http";
      groupId = "org.apache.maven.resolver";
      sha512 = "97c23620a57406a8d87a08ab2897355afcce4b53b397ef7d13b4254cb07e965b51f05e21ce2d77ea93c4dbc63f32b3f07ff2171bccfe2b4f21116569968a003e";
      version = "1.0.3";
    };
  }

  {
    name = "net.cgrand/parsley";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "parsley";
      groupId = "net.cgrand";
      sha512 = "e114f9e5709b9a38214aabc2b7bb33984693a4302fd8570bb91956bce2755d69b6ee2eaa7224137e306ab1f830672eee928e030677f50739edc62314429fa1f7";
      version = "0.9.3";
    };
  }

  {
    name = "funcool/cats";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "cats";
      groupId = "funcool";
      sha512 = "83ccb058078c3c380435512e6f92cfc117244fab4819db776eb963d3b488ac92ca70a783b5d3b776d9d4cf06d9de5d3730c07ce6e7013e6717ba28335601ece8";
      version = "2.3.2";
    };
  }

  {
    name = "org.apache.maven/maven-model-builder";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-model-builder";
      groupId = "org.apache.maven";
      sha512 = "6684b58d14e7d037f240ae15ee0456d27354c9dd93a1dc2bdbb66f399b012ffe8ff67a1dd83ee1e45c07fd91af77909a9c19d6b29791002d5b5acf23ca75dcb2";
      version = "3.5.3";
    };
  }

  {
    name = "io.aviso/pretty";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "pretty";
      groupId = "io.aviso";
      sha512 = "416433ae5c5773a3a12e7cff3f75a43f1a2d3f4454aad04d065c1e4e13627130f289dbb41355a5665236082b6535939fc4c40a2fddcc22a40d0d4ba290544bfb";
      version = "1.1.1";
    };
  }

  {
    name = "rewrite-clj/rewrite-clj";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "rewrite-clj";
      groupId = "rewrite-clj";
      sha512 = "04850f7b29be722be6c01760705be43e1b5b93315baa096925ceac94835b58702913c45c8166dadf193fb8f5150ff2c5539ae3ec85c37331727e5d0accfefcca";
      version = "1.1.45";
    };
  }

  {
    name = "org.codehaus.plexus/plexus-utils";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-utils";
      groupId = "org.codehaus.plexus";
      sha512 = "3805c57b7297459c5e2754d0fd56abd454eee08691974fb930ebb9b79a529fd874f16d40cec66e7fd90d4146c9d1fef45cdb59f9e359fce0c48ac77526fc320d";
      version = "3.1.0";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-transport-file";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-transport-file";
      groupId = "org.apache.maven.resolver";
      sha512 = "a83cc067c0857f091787120dcbde00f2df5cd6379a02cca95a091aa243ca22dfbae634406c58373b391caf911dd6db3b4ff4a3d51768f4a61b1081e7c78bb252";
      version = "1.0.3";
    };
  }

  {
    name = "slingshot/slingshot";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "slingshot";
      groupId = "slingshot";
      sha512 = "ff2b2a27b441d230261c7f3ec8c38aa551865e05ab6438a74bd12bfcbc5f6bdc88199d42aaf5932b47df84f3d2700c8f514b9f4e9b5da28d29da7ff6b09a7fb5";
      version = "0.12.2";
    };
  }

  {
    name = "org.flatland/ordered";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "ordered";
      groupId = "org.flatland";
      sha512 = "849f115d8dc22122577bb6c2af383663488a84125303ba90559f4f5d8538693a5797d95aca608e6844413b925ea6e12112f0cf2d3dcacfcc603b50d749f7a25e";
      version = "1.15.10";
    };
  }

  {
    name = "commons-io/commons-io";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-io";
      groupId = "commons-io";
      sha512 = "1f6bfc215da9ae661dbabba80a0f29101a2d5e49c7d0c6ed760d1cafea005b7f0ff177b3b741e75b8e59804b0280fa453a76940b97e52b800ec03042f1692b07";
      version = "2.5";
    };
  }

  {
    name = "org.apache.maven.wagon/wagon-http-shared";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "wagon-http-shared";
      groupId = "org.apache.maven.wagon";
      sha512 = "d4ef092c8ca8efd4295323d7bdb98315fcf574c2e5e227840847b936ab36095217583c5a807a27e21b831ade4cfbaa570278aa0d1a0144e92b90a42099b541f1";
      version = "3.0.0";
    };
  }

  {
    name = "com.fasterxml.jackson.core/jackson-core";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jackson-core";
      groupId = "com.fasterxml.jackson.core";
      sha512 = "d5337db908b2c56dcb911e3d1a5f671456c13f254fe8d2a620823bc15b2db6aaa8325a86b436b5d181f2584b533158fd14d140b98305ac252f8dfd9a627da859";
      version = "2.13.3";
    };
  }

  {
    name = "org.yaml/snakeyaml";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "snakeyaml";
      groupId = "org.yaml";
      sha512 = "4322e41c6fc5114521da21787ab313fa74bf8449ab0c23ec830627b8121504f70d4522e880aec64df227164729d40b2fbd9670e3a046dd5a5aabc1f71e91c16c";
      version = "1.25";
    };
  }

  {
    name = "org.ow2.asm/asm";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "asm";
      groupId = "org.ow2.asm";
      sha512 = "876eac7406e60ab8b9bd6cd3c221960eaa53febea176a88ae02f4fa92dbcfe80a3c764ba390d96b909c87269a30a69b1ee037a4c642c2f535df4ea2e0dd499f2";
      version = "9.2";
    };
  }

  {
    name = "org.slf4j/jul-to-slf4j";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jul-to-slf4j";
      groupId = "org.slf4j";
      sha512 = "152f153c42e5f69c95e3caeed5ab519e975d7ad79ac0199f31699646299b7ddab58068d5964fbd2170eed29966c3d8d1b00b0a1a4a6f698f9a9eb9c9b9d30dcb";
      version = "2.0.3";
    };
  }

  {
    name = "org.apache.httpcomponents/httpcore";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "httpcore";
      groupId = "org.apache.httpcomponents";
      sha512 = "10814bfb8dcce31034f8fd6822f9da29299529b900616b78d8caf846748cf2b1e093f7b99db26a8580266e3346b822b5edb347004b0d13580e6df85cb327c93c";
      version = "4.4.6";
    };
  }

  {
    name = "io.pedestal/pedestal.interceptor";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "pedestal.interceptor";
      groupId = "io.pedestal";
      sha512 = "b6d99300e2c656fc63841449067d74893c63f884d282ff1af40510e5e53baac0f17ac869212e0023dc01d3766248ce28e93e32a57239926254e3af0240c82178";
      version = "0.5.10";
    };
  }

  {
    name = "io.dropwizard.metrics/metrics-core";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "metrics-core";
      groupId = "io.dropwizard.metrics";
      sha512 = "4b500efcc88e717dbbfff9629e12db0f23380bc7dbae820039ed730cdaf26fb6d5be6e58434bd6f688ea3d675576e2057ec183472aac99189817fc28b3c3489e";
      version = "4.1.0";
    };
  }

  {
    name = "com.grammarly/omniconf";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "omniconf";
      groupId = "com.grammarly";
      sha512 = "2b13138090c9706af014b7d22b316af5300f41bfc70ee1f604ee6d817f70ca6227951f673231830c81888db2c50533f9c53de3e314d725a60b8eee99718655af";
      version = "0.4.3";
    };
  }

  {
    name = "eu.neilalexander/jnacl";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jnacl";
      groupId = "eu.neilalexander";
      sha512 = "addba1eae1975a71a204557dafb111c5c2aab39d9a7bb6428a26107935d95290139381c0a283b77e67b44e1d8110d3fa3919d7e7fc73e0023771beece4eab994";
      version = "1.0.0";
    };
  }

  {
    name = "zprint/zprint";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "zprint";
      groupId = "zprint";
      sha512 = "2f29288a1d9dd7e76689b32616049af8ebc0e98f0994f1eae1c8e6e725084df23de11a4d6231d2712167ef4adfdfffe494cea2c11b6e752f81acd641381516eb";
      version = "1.2.4";
    };
  }

  {
    name = "com.taoensso/truss";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "truss";
      groupId = "com.taoensso";
      sha512 = "79a515306228e8e8f1c1cf5bb65ac8c979954f3a6e8461c059a7b9402967163a1eb7a70de3ad41e8195d9dbfac2d17af8cc03e09bf72f8e9f6704b842656c0b9";
      version = "1.6.0";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-api";
      groupId = "org.apache.maven.resolver";
      sha512 = "d00cd4ec92bfafe88d9c4f4ce91e6c2d581d416a096743d396c1712a5788239cf2d55f910e1c0024034f7e0d8028ff602339b87c8fd3ad54f665a8b63d142e67";
      version = "1.1.1";
    };
  }

  {
    name = "hiccup/hiccup";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "hiccup";
      groupId = "hiccup";
      sha512 = "419dd67281135feb31f74528907b785679066e22cf397f14a6d9439cb9c463d0db66436c214b2b1b5944be6b9d28e3fc7d9e4042de52f9633bf0825548c0f524";
      version = "2.0.0-alpha2";
    };
  }

  {
    name = "io.opentracing/opentracing-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "opentracing-api";
      groupId = "io.opentracing";
      sha512 = "931197ca33e509570e389cd163af96e277bb3635f019e34e2fc97d3fa9c34bb9042f25b2ba8aa59f8516cc044ec3e9584462601b8aa5f954bbc6ad88e5fbe5cd";
      version = "0.33.0";
    };
  }

  {
    name = "org.apache.maven/maven-resolver-provider";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-provider";
      groupId = "org.apache.maven";
      sha512 = "ec9e402084886554d247232b3dc5a971f6cbc93206759104ee7f94c7ba3ea2d69a715c68e479d2c64f6fe5045b6d7bd75cc3bb239462464ac608b0db1a5f0db5";
      version = "3.5.3";
    };
  }

  {
    name = "commons-logging/commons-logging";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-logging";
      groupId = "commons-logging";
      sha512 = "ed00dbfabd9ae00efa26dd400983601d076fe36408b7d6520084b447e5d1fa527ce65bd6afdcb58506c3a808323d28e88f26cb99c6f5db9ff64f6525ecdfa557";
      version = "1.2";
    };
  }

  {
    name = "com.google.guava/guava";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "guava";
      groupId = "com.google.guava";
      sha512 = "d8736b5151df2dd052c09548a118af15a8b8b40999954cd093cfd301445accb8b7e9532b36bac8b2fab9234a24e2e05009a33d0a8e149e841ebddbcc733a8e4c";
      version = "20.0";
    };
  }

  {
    name = "com.fzakaria/slf4j-timbre";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "slf4j-timbre";
      groupId = "com.fzakaria";
      sha512 = "9a25ed545a7dac8fb74096ed531fa4362989a1ed68350e63f403a871fdf19ab582c6f2c1c8e08978a431d8da31d8226bf34f1d0263ac5f6a14955ff56fdf9e17";
      version = "0.3.21";
    };
  }

  {
    name = "clojure.java-time/clojure.java-time";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "clojure.java-time";
      groupId = "clojure.java-time";
      sha512 = "cd27eddad69554fcc443603bb69ab7dbe5d4cc937080f4b4d1ef3590e855faef2366dda77724da6c9b8941c340f8b5c5cb1345855f946718bd3ceb9c124a226a";
      version = "1.1.0";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-spi";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-spi";
      groupId = "org.apache.maven.resolver";
      sha512 = "bb58083c5ef2b6d3915acb368c80bd55ca6318925c606ad74e3e4ab2fc0066c7fa2480cefa34487c5349f1edff02131bbaa4c3a426f9a52d5a6a66a4a023d452";
      version = "1.1.1";
    };
  }

  {
    name = "org.clojure/algo.generic";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "algo.generic";
      groupId = "org.clojure";
      sha512 = "2ded22096f7bf051fcc649d56fdb0ef2dddcb5490e22ce4d7e6f714d910db0cc7d453862b2180169641c21f0754b799036e4b0e7944c79f29d22dcb4152e384d";
      version = "0.1.3";
    };
  }

  {
    name = "borkdude/edamame";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "edamame";
      groupId = "borkdude";
      sha512 = "5f5f36a85521464e97c0ada94581b37d7ffc7d1b9adaf7b3b509447bc0d6cedf339f12ae75d6bf679b69f9e1b582d0ee1a995bfd039657b17ec9a85516700fbe";
      version = "0.0.19";
    };
  }

  {
    name = "com.taoensso/timbre";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "timbre";
      groupId = "com.taoensso";
      sha512 = "8c88eea8f0a94a3fc14f450a03e76ce0573d31f6c301252d3f9afc177f87a03326966197e8508e766f3caab61ef356142c6dc002e07ed09771f341dd6b290edf";
      version = "5.2.1";
    };
  }

  {
    name = "org.clojure/java.jdbc";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "java.jdbc";
      groupId = "org.clojure";
      sha512 = "19e37ee3a16ccfdeb299e72ee0ae64a557b20296dd9461bf2288d0507e1d915ad6fcc56e4aadd712340f5c21e2c764ed7d4ad074eb8e4c82dc6ba5fe96111930";
      version = "0.7.12";
    };
  }

  {
    name = "org.apache.maven.wagon/wagon-http";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "wagon-http";
      groupId = "org.apache.maven.wagon";
      sha512 = "e565e6541d53a5c2823a211586163707a5dbf5d9b3dd9f4a8d1d9dd2ffc0c8cf3ef2adb78d455235d22ede99d2e4619eb7f94d2a52eb0ffd119b52b33f9d89ba";
      version = "3.0.0";
    };
  }

  {
    name = "io.opentracing/opentracing-noop";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "opentracing-noop";
      groupId = "io.opentracing";
      sha512 = "c727bcf20504fa72bfc07456bdde3b0b50988632d85c7af78df742efd90a431c125f5d644273203fa211a62fc4a282455cf281c7c82b82df4695afbc5488577f";
      version = "0.33.0";
    };
  }

  {
    name = "net.cgrand/regex";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "regex";
      groupId = "net.cgrand";
      sha512 = "f0dfa4727818765364ce1793337597b06a2f95364245ab6c860e2373a98da55771e77a7eb772dcf415a336d8caad35673d5054e18b9494c3e1b9f882fecfb4d9";
      version = "1.1.0";
    };
  }

  {
    name = "cider/cider-nrepl";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "cider-nrepl";
      groupId = "cider";
      sha512 = "e201944e32ce9b8fa328327c84f31d11cf5507a97b4fd3189a0304f4ebfd3bd557a1886335f295831941ac30d2b2394ad79a2897cb9bce506c0cbd8e04bbc40f";
      version = "0.26.0";
    };
  }

  {
    name = "com.cemerick/pomegranate";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "pomegranate";
      groupId = "com.cemerick";
      sha512 = "a08137b575305aeff9858b93fc1febba92aaff27d9994e884c0e614f43704403cfb7e3e8d819a8151966c6439c178f4fb371003c392591dbc87b9e0fa64788fd";
      version = "1.1.0";
    };
  }

  {
    name = "org.codehaus.plexus/plexus-interpolation";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-interpolation";
      groupId = "org.codehaus.plexus";
      sha512 = "d9183dc0920fb996901644903194883d1e1d1e8c4863f3c55bd6a9b14de996ee30651849435a92c8c55fc82be0e4524f1b2741957f9464434da292188ffcee70";
      version = "1.24";
    };
  }

  {
    name = "org.apache.httpcomponents/httpclient";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "httpclient";
      groupId = "org.apache.httpcomponents";
      sha512 = "f8d4a960ed235770570afaf793c4596404adfa777e08bdb87ae2db92575db5e11755025fe43969f852ef505a390833e79bdd1fccd5f3fb7dee87625607b504a2";
      version = "4.5.3";
    };
  }

  {
    name = "cheshire/cheshire";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "cheshire";
      groupId = "cheshire";
      sha512 = "2262573047d194bba28b3d2ca4b00b12f8171d6f8f7f5449df35f10ab1ef5902a9ba2f9937399d6e4b54a78bda919fa205a22a44cde998019bc0cfc508e90f29";
      version = "5.11.0";
    };
  }

  {
    name = "tigris/tigris";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tigris";
      groupId = "tigris";
      sha512 = "fdff4ef5e7175a973aaef98de4f37dee8e125fc711c495382e280aaf3e11341fe8925d52567ca60f3f1795511ade11bc23461c88959632dfae3cf50374d02bf6";
      version = "0.1.2";
    };
  }

  {
    name = "org.clojure/core.match";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "core.match";
      groupId = "org.clojure";
      sha512 = "d69ed23bad115ed665b402886e1946fcecacbbfd05150f3eb66dce9ffc0381d0e02ed6f41cb390a6dfb74f4f26e3b0f6793dec38f6a4622dc53c0739d79f5f5e";
      version = "0.3.0";
    };
  }

  {
    name = "org.clojure/tools.reader";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.reader";
      groupId = "org.clojure";
      sha512 = "3481259c7a1eac719db2921e60173686726a0c2b65879d51a64d516a37f6120db8ffbb74b8bd273404285d7b25143ab5c7ced37e7c0eaf4ab1e44586ccd3c651";
      version = "1.3.6";
    };
  }

  {
    name = "org.tcrawley/dynapath";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "dynapath";
      groupId = "org.tcrawley";
      sha512 = "1b0caf390515212e6b151d6c227b1a62e430e682b6c811736edba3cc918344053e35c092e12afd523198ed6244018450931776f8388e61a593f266476b6db19e";
      version = "1.0.0";
    };
  }

  {
    name = "org.babashka/sci";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "sci";
      groupId = "org.babashka";
      sha512 = "2897029dba4917facf93935229f1288d9e90973e8dbc8ff84448335452815274c23371ab643c35df0b1854ff6de1574c37880267fd0edd900039f5a1678d73c5";
      version = "0.3.4";
    };
  }

  {
    name = "io.opentracing/opentracing-util";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "opentracing-util";
      groupId = "io.opentracing";
      sha512 = "fbba29ff3d6018561077e9539ad9b72876424600eca3addb6a26981a4a3e52cb3dfd30f27945aff2b6c222c42454ce3ba67597171fd809a74c65b920f3a47c7a";
      version = "0.33.0";
    };
  }

  {
    name = "org.jsoup/jsoup";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsoup";
      groupId = "org.jsoup";
      sha512 = "8119ec44ee622c75f47a80dedeadf557744208dc49d3d9f579660929a0be3f71d3b8cb4aed64ee31f6bf7488bfc3516fb3980137d2fc63063caf46c9921f19f0";
      version = "1.7.2";
    };
  }

  {
    name = "nrepl/nrepl";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "nrepl";
      groupId = "nrepl";
      sha512 = "92534555cc5fa45e8990b8566996fe784df368849e0938fbc7a89909ccbb62dd7d4fca9b7aa3c615702ec30f9962a460c500f6b60abc72661c5f4c66414fc395";
      version = "1.0.0";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-connector-basic";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-connector-basic";
      groupId = "org.apache.maven.resolver";
      sha512 = "c8c14480ed89cf5d4cfec5dee7dae366b0b5d003cd835d4b1358add81253b205a53f6a62e5ecc145f09406fc8c57adb5fbf8f4521a044ac3d37b5fa8e67d4e21";
      version = "1.0.3";
    };
  }

  {
    name = "org.xerial/sqlite-jdbc";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "sqlite-jdbc";
      groupId = "org.xerial";
      sha512 = "f4c27027fe3cb7914aaf155a1afaa0c8b455e5d142b4e5f31d87bfe619c9949e1981ba7eed1f7a8a3cd27edba1321cc4cd74cf4321ae800e8a911b4d94e03930";
      version = "3.39.3.0";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-impl";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-impl";
      groupId = "org.apache.maven.resolver";
      sha512 = "3ffcac7ed4a05b2b58669ce05cc348acad627be3e0941ee28a9a665fea43a571d554005dd72ec51130083f792e31894880525df3cd6962d7c95885340abfb7da";
      version = "1.1.1";
    };
  }

  {
    name = "org.slf4j/slf4j-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "slf4j-api";
      groupId = "org.slf4j";
      sha512 = "cf50d5cc86404fefa49730da36147db5f6d65c8b06163bbf62311e6874c20ca46db02ab6bda27c9c1485a5c57fe63b89fd3000b8d838c429240ee95734f5901e";
      version = "2.0.3";
    };
  }

  {
    name = "org.apache.maven/maven-model";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-model";
      groupId = "org.apache.maven";
      sha512 = "888a778101774265e0d8dbc96305274053d275c0b261e81c6aae8765f92b13d1e06c5aa8f51c7d53d5267e46041adc9218686e53fc47cc15563a1b178291bc16";
      version = "3.5.3";
    };
  }

  {
    name = "org.clojure/test.check";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "test.check";
      groupId = "org.clojure";
      sha512 = "b8d7a330b0b5514cd6a00c4382052fab51c3c9d3bc53133f8506791fa670e7c5ecd65094977ea5ced91f59623b0abd1ab8feeec96d63c5c6e459b265a655c577";
      version = "1.1.1";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-util";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-util";
      groupId = "org.apache.maven.resolver";
      sha512 = "91dcbb8184f06e64da35d40c7b96e854f7311b6232d74b4b6d3489a51e0c05ebbee44f59367ab118974cdb6c5b3747981a41869cc7372691b2c2e1d0daa2ffa3";
      version = "1.1.1";
    };
  }

  {
    name = "io.dropwizard.metrics/metrics-jmx";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "metrics-jmx";
      groupId = "io.dropwizard.metrics";
      sha512 = "706f7428b967923d2792b0587684e972b1404d663a6ac3d661772a57edf096f0de0efac8bbfcead4576c008b096c33f77499e8f193ccbb8b072d7aa6e6d7a40d";
      version = "4.1.0";
    };
  }

  {
    name = "io.forward/yaml";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "yaml";
      groupId = "io.forward";
      sha512 = "e2d3b7aea260346a1db44bcc3c363877d0ff2b327c4fd287759782949b1a498bc8019f06ddabee84443b96b07ea4765443f8190e04f5f903de049e2cc0fd63e9";
      version = "1.0.11";
    };
  }

  {
    name = "me.raynes/fs";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "fs";
      groupId = "me.raynes";
      sha512 = "b72af0093c1feccf78ea0632ba523eca89436b0575abc0af484e03570011aa89f429f9820a9fc27f60da113d728d2bbc09ba26d3a0cdd63d9d9c7775643f6852";
      version = "1.4.6";
    };
  }

  {
    name = "org.clojure/core.memoize";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "core.memoize";
      groupId = "org.clojure";
      sha512 = "67196537084b7cc34a01454d2a3b72de3fddce081b72d7a6dc1592d269a6c2728b79630bd2d52c1bf2d2f903c12add6f23df954c02ef8237f240d7394ccc3dde";
      version = "1.0.253";
    };
  }

  {
    name = "org.apache.maven/maven-repository-metadata";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-repository-metadata";
      groupId = "org.apache.maven";
      sha512 = "6d898373d483ac7f24ab0256406f4be45035f95a247bb19ac7102ea7f5e336976381c5125b30a7148bc9a8e1df6d27b456d1f8e9b55b99d9688e37dfd03733a3";
      version = "3.5.3";
    };
  }

  {
    name = "io.simplect/compose";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "compose";
      groupId = "io.simplect";
      sha512 = "0aceab86d4a97285ddd6d40abdeb5b9bea16a16b6509ef2fcd80e547d772185041e26abcc12ae11938d7b78fed175850f811d5cb2a2f0590524c2c11975bacd1";
      version = "0.7.27";
    };
  }

  {
    name = "org.clojure/data.priority-map";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "data.priority-map";
      groupId = "org.clojure";
      sha512 = "bb8bc5dbfd3738c36b99a51880ac3f1381d6564e67601549ef5e7ae2b900e53cdcdfb8d0fa4bf32fb8ebc4de89d954bfa3ab7e8a1122bc34ee5073c7c707ac13";
      version = "1.1.0";
    };
  }

  {
    name = "borkdude/sci.impl.reflector";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "sci.impl.reflector";
      groupId = "borkdude";
      sha512 = "c747fd347e6aba9578d105298b7c7402f53e8639d5c8e6dc83b127f3c413feeb1b9dead7405ac2c4345f02290902e8a2affbec749474481e9c9f19b3d049f18f";
      version = "0.0.1";
    };
  }

  {
    name = "org.apache.maven/maven-builder-support";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-builder-support";
      groupId = "org.apache.maven";
      sha512 = "1b2ca4427772532cfb93b4d643b17eca5843f1e1a9c4b26089eed8c10028344fb85d593d133fdffaff07b552c3027a9f24e1a92d68ed4696682be04069e84583";
      version = "3.5.3";
    };
  }

  {
    name = "org.slf4j/log4j-over-slf4j";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "log4j-over-slf4j";
      groupId = "org.slf4j";
      sha512 = "a1f90d8ea338660cc0e38073752cf32e46a042bc408477d841ba7ad69ad0d066bbbf9d4c399a34352d620ba9d2402c7a51574a88f314ddcc796c35adc99c37f4";
      version = "2.0.3";
    };
  }

  {
    name = "org.clojure/core.cache";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "core.cache";
      groupId = "org.clojure";
      sha512 = "0a07ceffc2fa3a536b23773eefc7ef5e1108913b93c3a5416116a6566de76dd5c218f3fb0cc19415cbaa8843838de310b76282f20bf1fc3467006c9ec373667e";
      version = "1.0.225";
    };
  }

  {
    name = "org.clojure/core.async";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "core.async";
      groupId = "org.clojure";
      sha512 = "160a77da25382d7c257eee56cfe83538620576a331e025a2d672fc26d9f04e606666032395f3c2e26247c782544816a5862348f3a921b1ffffcd309c62ac64f5";
      version = "1.5.648";
    };
  }

  {
    name = "com.fasterxml.jackson.dataformat/jackson-dataformat-smile";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jackson-dataformat-smile";
      groupId = "com.fasterxml.jackson.dataformat";
      sha512 = "4c1566aa4fac309de8fba08ea355165cf2a888b7bcec98e7035ac8acd7315e340415a10b8deec6497fc4eea5ba9319fc989676170d8c4c0d0bbc3d4f3cc4d681";
      version = "2.13.3";
    };
  }

  {
    name = "org.apache.maven/maven-artifact";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-artifact";
      groupId = "org.apache.maven";
      sha512 = "a4cafc89d66c8f074c5c3f9454e5077abc0de6242c29904d8ee5816348af21b1006da67f3118478bc9eb067725c39be9b88e4a019eb8368c936f971f0499c2ca";
      version = "3.5.3";
    };
  }

  {
    name = "org.clojure/data.codec";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "data.codec";
      groupId = "org.clojure";
      sha512 = "cb6910fc0ee47ce6959a442ba3ef456dd91fe8589a576526d20fd661c8d305962f64a8e8ebde69f0bd00082027dbd0ac52b642fcd4950b4f0e5b7a1205f95138";
      version = "0.1.1";
    };
  }

  ];
  }
