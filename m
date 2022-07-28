Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFB05845D1
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 20:28:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A5FC383FEA
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 14:28:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659032899; bh=IhJ9fz3Rv9J7Dl43OyI7aM9aaJYBgEuC2MUzeqewlVs=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=p8ZJaeaab7kErJ3nBbfKeE358by+16Re7mOwF7geFHQRTuUKYOgbytzPbkKuCDlVr
	 IjTPWL1TnBfUICgFx7uzOadLedTScZV4qmA3MBWK/2PeS/7HSYtb682ZK8RjHBqsy/
	 OrXaKtw/5THCy/PJ/BAM+7S7NkPYiz7ns3ODeEWHNRoHayohALiZtXZj3S+DsVmkaV
	 eSRoSH5hMyM+qt+TcbJb1GyJ0GY67AsmFCpd+Ur7vQgccqOVCv9QL+KX6gRpSvrPJN
	 j0LBqrS0/aAvNsllBsCmkub0zsiNuAf0Sd0EgDP1kDD2N5tFQW0m8v3G/KKG9pur04
	 KhSRc7HL1pOXQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7FA32383F8B
	for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 14:26:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659032777; bh=FaYgVWmTfexffHdCWBkn1PGcO+e2OMMhvep5Huqd37E=;
	h=Date:To:From:Subject:From;
	b=H52MkzPuKy0pz5VWzOgStfsMay2/FeI0guI/UoCvQseExigaW2ii/1n0HZGvXulLE
	 oauNjqPgmvNd5C87etg1Km9XDYIeK5HNT3HDT+DK9uz6L9Z1qtlcTuizF9aKCDtFni
	 9JT7KEAM0gOPpL3P2so3uHlvmd8rHI6P4WY08ou+rZhDm8G77682ZAr1RMLWAXXx60
	 IUbsNOyE6vmfPxCkOxsUlkxvrUyPJiDz9tjoNonY5rjR1UhbvJLKBznPg0hSBQJG1Y
	 O6l9JTCR7QMI4IHFSt2RkQ9hloEukrp3lzDHWtNI70tzWV2K2U+Kd5v1h48yhNz7rE
	 nrFiVS9hZJNmQ==
Date: Thu, 28 Jul 2022 18:26:17 +0000
To: usrp-users@lists.ettus.com
Message-ID: <3ozPjdcKVHphIfQR4oZjUTnrAZKFygMucHsBPoEhg10@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: GJ6YOORF6QNB6572JJAXHGVZFEBCY5UY
X-Message-ID-Hash: GJ6YOORF6QNB6572JJAXHGVZFEBCY5UY
X-MailFrom: k19033844@kcl.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error Build uhd
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GJ6YOORF6QNB6572JJAXHGVZFEBCY5UY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: k19033844--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: k19033844@kcl.ac.uk
Content-Type: multipart/mixed; boundary="===============1626674794598531454=="

This is a multi-part message in MIME format.

--===============1626674794598531454==
Content-Type: multipart/alternative;
 boundary="b1_3ozPjdcKVHphIfQR4oZjUTnrAZKFygMucHsBPoEhg10"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3ozPjdcKVHphIfQR4oZjUTnrAZKFygMucHsBPoEhg10
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear All,

I use Cmake to compile uhd v4.0.0.0, I=E2=80=99m building uhd on a Ubuntu=
 16.04 lts machine. My gcc and g++ are above minimum requirement, but I g=
ot following error.

\[ 57%\] Linking CXX executable rx_samples_c

\[ 57%\] Linking CXX executable test_dboard_coercion

\[ 57%\] Linking CXX executable rx_ascii_art_dft

\[ 57%\] Linking CXX executable test_clock_synch

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::features::discovera=
ble_feature_registry::enumerate_features\[abi:cxx11\]()'

../lib/libuhd.so.4.0.0: undefined reference to \`nirio_driver_iface::rio_=
open(std::__cxx11::basic_string<char, std::char_traits<char>, std::alloca=
tor<char> > const&, int&)'

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::value_error::value_=
error(std::string const&)'

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::not_implemented_err=
or::not_implemented_error(std::string const&)'

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::convert::register_b=
ytes_per_item(std::string const&, unsigned long)'

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::path_expandvars(std=
::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char=
> > const&)'

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::csv::to_rows\[abi:c=
xx11\](std::istream&)'

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::utils::serial_numbe=
rs_match(std::__cxx11::basic_string<char, std::char_traits<char>, std::al=
locator<char> > const&, std::__cxx11::basic_string<char, std::char_traits=
<char>, std::allocator<char> > const&)'

collect2: error: ld returned 1 exit status

examples/CMakeFiles/rx_samples_c.dir/build.make:109: recipe for target 'e=
xamples/rx_samples_c' failed

make\[2\]: \*\*\* \[examples/rx_samples_c\] Error 1

CMakeFiles/Makefile2:956: recipe for target 'examples/CMakeFiles/rx_sampl=
es_c.dir/all' failed

make\[1\]: \*\*\* \[examples/CMakeFiles/rx_samples_c.dir/all\] Error 2

make\[1\]: \*\*\* Waiting for unfinished jobs....

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::features::discovera=
ble_feature_registry::enumerate_features\[abi:cxx11\]()'

../lib/libuhd.so.4.0.0: undefined reference to \`nirio_driver_iface::rio_=
open(std::__cxx11::basic_string<char, std::char_traits<char>, std::alloca=
tor<char> > const&, int&)'

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::value_error::value_=
error(std::string const&)'

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::not_implemented_err=
or::not_implemented_error(std::string const&)'

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::convert::register_b=
ytes_per_item(std::string const&, unsigned long)'

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::path_expandvars(std=
::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char=
> > const&)'

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::csv::to_rows\[abi:c=
xx11\](std::istream&)'

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::utils::serial_numbe=
rs_match(std::__cxx11::basic_string<char, std::char_traits<char>, std::al=
locator<char> > const&, std::__cxx11::basic_string<char, std::char_traits=
<char>, std::allocator<char> > const&)'

collect2: error: ld returned 1 exit status

examples/CMakeFiles/test_dboard_coercion.dir/build.make:108: recipe for t=
arget 'examples/test_dboard_coercion' failed

make\[2\]: \*\*\* \[examples/test_dboard_coercion\] Error 1

CMakeFiles/Makefile2:1037: recipe for target 'examples/CMakeFiles/test_db=
oard_coercion.dir/all' failed

make\[1\]: \*\*\* \[examples/CMakeFiles/test_dboard_coercion.dir/all\] Er=
ror 2

../lib/libuhd.so.4.0.0: undefined reference to \`uhd::features::.discover=
able_feature_registry:.:/enumerate_featureslib\[/abilibuhd.so.4.0.0::cxx1=
1 \]undefined( )reference'=20

to. .\`/uhdlib:/:libuhd.so.4.0.0features:: :undefineddiscoverable_feature=
_registry :reference: enumerate_featuresto\[ abi\`:nirio_driver_ifacecxx1=
1:\]:(rio_open)('std

\:.:.__cxx11/:lib:/basic_stringlibuhd.so.4.0.0<:char ,undefined  stdrefer=
ence: :tochar_traits <\`charnirio_driver_iface>:,: rio_openstd(:std::allo=
cator:<__cxx11char:>: basic_string>< charconst,& ,std :int:&char_traits)<=
'char

>.,. /stdlib:/:libuhd.so.4.0.0allocator:< charundefined>  reference>  toc=
onst &\`,uhd :int:&value_error):':

value_error.(.std/:lib:/stringlibuhd.so.4.0.0 :const &undefined) 'referen=
ce

 .to. /\`libuhd/:libuhd.so.4.0.0::value_error :undefined: value_errorrefe=
rence( stdto: :\`stringuhd :const:&not_implemented_error):':

not_implemented_error.(.std/:lib:/stringlibuhd.so.4.0.0 :const &undefined=
) 'reference

 .to. /\`libuhd/:libuhd.so.4.0.0::not_implemented_error :undefined: not_i=
mplemented_errorreference( stdto: :\`stringuhd :const:&convert):':

register_bytes_per_item.(.std/:lib:/stringlibuhd.so.4.0.0 :const &undefin=
ed,  referenceunsigned  tolong )\`'uhd

\:.:.convert/:lib:/register_bytes_per_item(libuhd.so.4.0.0std:: :undefine=
dstring  referenceconst &to,  \`unsigneduhd :long:)path_expandvars'(

std.:.:/__cxx11lib:/:libuhd.so.4.0.0basic_string:< charundefined,  refere=
ncestd :to: char_traits\`<uhdchar:>:,path_expandvars (stdstd::::allocator=
__cxx11<:char:>basic_string <>char ,const &std):':

char_traits.<.char/>lib,/ libuhd.so.4.0.0std:: :undefinedallocator <refer=
encechar >to  >\` uhdconst:&:)csv':

\:.to_rows.\[/abilib:/cxx11libuhd.so.4.0.0\]:( stdundefined: :referenceis=
tream &to) '\`

uhd.:.:/csvlib:/:libuhd.so.4.0.0to_rows:\[ abiundefined: cxx11reference\]=
 (tostd :\`:uhdistream:&:)utils':

\:.serial_numbers_match.(/stdlib:/:libuhd.so.4.0.0__cxx11:: :undefinedbas=
ic_string <referencechar ,to  std\`:uhd::char_traits:<utilschar:>:,serial=
_numbers_match (stdstd::::allocator__cxx11<:char:>basic_string <>char ,co=
nst &std,: :stdchar_traits:<:char__cxx11>:,: basic_stringstd<:char:,alloc=
ator <stdchar:>: char_traits>< charconst>&,,  stdstd::::allocator__cxx11<=
:char:>basic_string <>char ,const &std):':

char_traits<char>, std::allocator<char> > const&)'

collect2: error: ld returned 1 exit status

collect2: error: ld returned 1 exit status

examples/CMakeFiles/test_clock_synch.dir/build.make:108: recipe for targe=
t 'examples/test_clock_synch' failed

examples/CMakeFiles/rx_ascii_art_dft.dir/build.make:110: recipe for targe=
t 'examples/rx_ascii_art_dft' failed

make\[2\]: \*\*\* \[examples/test_clock_synch\] Error 1

make\[2\]: \*\*\* \[examples/rx_ascii_art_dft\] Error 1

CMakeFiles/Makefile2:983: recipe for target 'examples/CMakeFiles/rx_ascii=
_art_dft.dir/all' failed

make\[1\]: \*\*\* \[examples/CMakeFiles/rx_ascii_art_dft.dir/all\] Error =
2

CMakeFiles/Makefile2:1010: recipe for target 'examples/CMakeFiles/test_cl=
ock_synch.dir/all' failed

make\[1\]: \*\*\* \[examples/CMakeFiles/test_clock_synch.dir/all\] Error =
2

Makefile:165: recipe for target 'all' failed

make: \*\*\* \[all\] Error 2

Can any one help me solve this issue?

Thank you so much.

Regards,

Guang

--b1_3ozPjdcKVHphIfQR4oZjUTnrAZKFygMucHsBPoEhg10
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear All,</p><p><br></p><p>I use Cmake to compile uhd v4.0.0.0, I=
=E2=80=99m building uhd on a Ubuntu 16.04 lts machine. My gcc and g++ are a=
bove minimum requirement, but I got following error.</p><p>[ 57%] Linking C=
XX executable rx_samples_c</p><p>[ 57%] Linking CXX executable test_dboard_=
coercion</p><p>[ 57%] Linking CXX executable rx_ascii_art_dft</p><p>[ 57%] =
Linking CXX executable test_clock_synch</p><p>../lib/libuhd.so.4.0.0: undef=
ined reference to `uhd::features::discoverable_feature_registry::enumerate_=
features[abi:cxx11]()'</p><p>../lib/libuhd.so.4.0.0: undefined reference to=
 `nirio_driver_iface::rio_open(std::__cxx11::basic_string&lt;char, std::cha=
r_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, int&amp;)=
'</p><p>../lib/libuhd.so.4.0.0: undefined reference to `uhd::value_error::v=
alue_error(std::string const&amp;)'</p><p>../lib/libuhd.so.4.0.0: undefined=
 reference to `uhd::not_implemented_error::not_implemented_error(std::strin=
g const&amp;)'</p><p>../lib/libuhd.so.4.0.0: undefined reference to `uhd::c=
onvert::register_bytes_per_item(std::string const&amp;, unsigned long)'</p>=
<p>../lib/libuhd.so.4.0.0: undefined reference to `uhd::path_expandvars(std=
::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocat=
or&lt;char&gt; &gt; const&amp;)'</p><p>../lib/libuhd.so.4.0.0: undefined re=
ference to `uhd::csv::to_rows[abi:cxx11](std::istream&amp;)'</p><p>../lib/l=
ibuhd.so.4.0.0: undefined reference to `uhd::utils::serial_numbers_match(st=
d::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::alloca=
tor&lt;char&gt; &gt; const&amp;, std::__cxx11::basic_string&lt;char, std::c=
har_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;)'</p><p>=
collect2: error: ld returned 1 exit status</p><p>examples/CMakeFiles/rx_sam=
ples_c.dir/build.make:109: recipe for target 'examples/rx_samples_c' failed=
</p><p>make[2]: *** [examples/rx_samples_c] Error 1</p><p>CMakeFiles/Makefi=
le2:956: recipe for target 'examples/CMakeFiles/rx_samples_c.dir/all' faile=
d</p><p>make[1]: *** [examples/CMakeFiles/rx_samples_c.dir/all] Error 2</p>=
<p>make[1]: *** Waiting for unfinished jobs....</p><p>../lib/libuhd.so.4.0.=
0: undefined reference to `uhd::features::discoverable_feature_registry::en=
umerate_features[abi:cxx11]()'</p><p>../lib/libuhd.so.4.0.0: undefined refe=
rence to `nirio_driver_iface::rio_open(std::__cxx11::basic_string&lt;char, =
std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, i=
nt&amp;)'</p><p>../lib/libuhd.so.4.0.0: undefined reference to `uhd::value_=
error::value_error(std::string const&amp;)'</p><p>../lib/libuhd.so.4.0.0: u=
ndefined reference to `uhd::not_implemented_error::not_implemented_error(st=
d::string const&amp;)'</p><p>../lib/libuhd.so.4.0.0: undefined reference to=
 `uhd::convert::register_bytes_per_item(std::string const&amp;, unsigned lo=
ng)'</p><p>../lib/libuhd.so.4.0.0: undefined reference to `uhd::path_expand=
vars(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std:=
:allocator&lt;char&gt; &gt; const&amp;)'</p><p>../lib/libuhd.so.4.0.0: unde=
fined reference to `uhd::csv::to_rows[abi:cxx11](std::istream&amp;)'</p><p>=
../lib/libuhd.so.4.0.0: undefined reference to `uhd::utils::serial_numbers_=
match(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std=
::allocator&lt;char&gt; &gt; const&amp;, std::__cxx11::basic_string&lt;char=
, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;)=
'</p><p>collect2: error: ld returned 1 exit status</p><p>examples/CMakeFile=
s/test_dboard_coercion.dir/build.make:108: recipe for target 'examples/test=
_dboard_coercion' failed</p><p>make[2]: *** [examples/test_dboard_coercion]=
 Error 1</p><p>CMakeFiles/Makefile2:1037: recipe for target 'examples/CMake=
Files/test_dboard_coercion.dir/all' failed</p><p>make[1]: *** [examples/CMa=
keFiles/test_dboard_coercion.dir/all] Error 2</p><p>../lib/libuhd.so.4.0.0:=
 undefined reference to `uhd::features::.discoverable_feature_registry:.:/e=
numerate_featureslib[/abilibuhd.so.4.0.0::cxx11 ]undefined( )reference' </p=
><p>to. .`/uhdlib:/:libuhd.so.4.0.0features:: :undefineddiscoverable_featur=
e_registry :reference: enumerate_featuresto[ abi`:nirio_driver_ifacecxx11:]=
:(rio_open)('std</p><p>:.:.__cxx11/:lib:/basic_stringlibuhd.so.4.0.0&lt;:ch=
ar ,undefined  stdreference: :tochar_traits &lt;`charnirio_driver_iface&gt;=
:,: rio_openstd(:std::allocator:&lt;__cxx11char:&gt;: basic_string&gt;&lt; =
charconst,&amp; ,std :int:&amp;char_traits)&lt;'char</p><p>&gt;.,. /stdlib:=
/:libuhd.so.4.0.0allocator:&lt; charundefined&gt;  reference&gt;  toconst &=
amp;`,uhd :int:&amp;value_error):':</p><p>value_error.(.std/:lib:/stringlib=
uhd.so.4.0.0 :const &amp;undefined) 'reference</p><p> .to. /`libuhd/:libuhd=
.so.4.0.0::value_error :undefined: value_errorreference( stdto: :`stringuhd=
 :const:&amp;not_implemented_error):':</p><p>not_implemented_error.(.std/:l=
ib:/stringlibuhd.so.4.0.0 :const &amp;undefined) 'reference</p><p> .to. /`l=
ibuhd/:libuhd.so.4.0.0::not_implemented_error :undefined: not_implemented_e=
rrorreference( stdto: :`stringuhd :const:&amp;convert):':</p><p>register_by=
tes_per_item.(.std/:lib:/stringlibuhd.so.4.0.0 :const &amp;undefined,  refe=
renceunsigned  tolong )`'uhd</p><p>:.:.convert/:lib:/register_bytes_per_ite=
m(libuhd.so.4.0.0std:: :undefinedstring  referenceconst &amp;to,  `unsigned=
uhd :long:)path_expandvars'(</p><p>std.:.:/__cxx11lib:/:libuhd.so.4.0.0basi=
c_string:&lt; charundefined,  referencestd :to: char_traits`&lt;uhdchar:&gt=
;:,path_expandvars (stdstd::::allocator__cxx11&lt;:char:&gt;basic_string &l=
t;&gt;char ,const &amp;std):':</p><p>char_traits.&lt;.char/&gt;lib,/ libuhd=
.so.4.0.0std:: :undefinedallocator &lt;referencechar &gt;to  &gt;` uhdconst=
:&amp;:)csv':</p><p>:.to_rows.[/abilib:/cxx11libuhd.so.4.0.0]:( stdundefine=
d: :referenceistream &amp;to) '`</p><p>uhd.:.:/csvlib:/:libuhd.so.4.0.0to_r=
ows:[ abiundefined: cxx11reference] (tostd :`:uhdistream:&amp;:)utils':</p>=
<p>:.serial_numbers_match.(/stdlib:/:libuhd.so.4.0.0__cxx11:: :undefinedbas=
ic_string &lt;referencechar ,to  std`:uhd::char_traits:&lt;utilschar:&gt;:,=
serial_numbers_match (stdstd::::allocator__cxx11&lt;:char:&gt;basic_string =
&lt;&gt;char ,const &amp;std,: :stdchar_traits:&lt;:char__cxx11&gt;:,: basi=
c_stringstd&lt;:char:,allocator &lt;stdchar:&gt;: char_traits&gt;&lt; charc=
onst&gt;&amp;,,  stdstd::::allocator__cxx11&lt;:char:&gt;basic_string &lt;&=
gt;char ,const &amp;std):':</p><p>char_traits&lt;char&gt;, std::allocator&l=
t;char&gt; &gt; const&amp;)'</p><p>collect2: error: ld returned 1 exit stat=
us</p><p>collect2: error: ld returned 1 exit status</p><p>examples/CMakeFil=
es/test_clock_synch.dir/build.make:108: recipe for target 'examples/test_cl=
ock_synch' failed</p><p>examples/CMakeFiles/rx_ascii_art_dft.dir/build.make=
:110: recipe for target 'examples/rx_ascii_art_dft' failed</p><p>make[2]: *=
** [examples/test_clock_synch] Error 1</p><p>make[2]: *** [examples/rx_asci=
i_art_dft] Error 1</p><p>CMakeFiles/Makefile2:983: recipe for target 'examp=
les/CMakeFiles/rx_ascii_art_dft.dir/all' failed</p><p>make[1]: *** [example=
s/CMakeFiles/rx_ascii_art_dft.dir/all] Error 2</p><p>CMakeFiles/Makefile2:1=
010: recipe for target 'examples/CMakeFiles/test_clock_synch.dir/all' faile=
d</p><p>make[1]: *** [examples/CMakeFiles/test_clock_synch.dir/all] Error 2=
</p><p>Makefile:165: recipe for target 'all' failed</p><p>make: *** [all] E=
rror 2</p><p><br></p><p>Can any one help me solve this issue?</p><p><br></p=
><p>Thank you so much.</p><p><br></p><p>Regards,</p><p>Guang</p>

--b1_3ozPjdcKVHphIfQR4oZjUTnrAZKFygMucHsBPoEhg10--

--===============1626674794598531454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1626674794598531454==--
