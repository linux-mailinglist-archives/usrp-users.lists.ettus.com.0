Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE123F7766
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 16:30:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C029383E81
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 10:30:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="fywAEz6o";
	dkim-atps=neutral
Received: from sonic301-2.consmr.mail.bf2.yahoo.com (sonic301-2.consmr.mail.bf2.yahoo.com [74.6.129.41])
	by mm2.emwd.com (Postfix) with ESMTPS id C6F243830FB
	for <usrp-users@lists.ettus.com>; Wed, 25 Aug 2021 10:29:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629901779; bh=jeJN6sQ4RBdOQCTzfOADNSpkYOnQqYnwTdLI/y1v+q8=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=fywAEz6oDD57Uz9cq5u4Cm+cbFDt4f1HMQar3YuLVZfIDqYjRO7EAL+v15WktkMCC5kTESbRqOPaCLNzvTRhoCyCW95zNNXK8jka9a/xqUOTVOW/6XDFqjv15RILWup3ABVf3n9R72HmDOOsPXFLZ5UGhyhBP7ckOBdffAXBcHUMjtGhFz3ohNVXkdK6oabmJknhHT0CRdVvG7GPbyU0NLbgSOw8RqaRj4qWpm+tka8q1KleO0yWdH4HhAUFeKc14C35IEYYDSZE5vT1/4Bzvj2yycKrIat9hLVQQzBmmaROdNUFMEdVld/ddbxx9uG8MX0TpTCyrQ5YYgDf+06zdA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629901779; bh=q1gs0FtN2K9cBydsiB2xL8sWVW5kXYTjBP1dGVfVy8c=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=hko4eUqJ6UEYv8wcxa6/1kiX/wb/nVl8eeyGRDs7LsuLy+Imzyl+iYzOu/MOMKtTvn1Bkvnx+HGdhbsIVDtfLfdZdYpIN8x2l0xHDOgbbHVtGFuVPNlRDho/ch0GTv/2YNLXmPCRinH/7TRsMDsTAG/LwgXkbCtP9xRUufj7MlJECRhO/rABnq22UHVokJvE3umCSinNZW2eLHdu6VkPjhvPraVevIIQrNRwVDzeXChs97WcEehP/JIesAVLTh9mU0qYMEUsj16rEhbqnKp5xFORlHkh4PwpI6xmUhyAQRY3HSvEhbliGE1NTEbB6EhN47Db3sf8ZvU56aC2iJYjwQ==
X-YMail-OSG: 60vYSYcVM1m.cGeyTBwrV3LPGPSzgGWt.6SWDwDY7pUX5kcm6xiX4mOKUUb47lY
 VWvUA69YIl_KMQ6NP4tfGf3DxA8SXF6L3Sq_IbqTrj.nnm5l6q2zh6gf4bXg0g4x8M2tU.m2dy_e
 Ahq3h.PUFHYkPJ0EfVhlrZmeTS6hYsY2IxQPSo3TgfNUXso_Ck1Z7lKqokGpakpZVUeLhI.Dai2v
 I3GhS9OAg0MyGsO0s3bUeE9nQ3BQC1mdw7ZMRQ6m1VSuh7mIU6bT8S42AV77ZG0CuINtm_Qs5pAh
 pTR.RmhflEqRsAkhb8W7abg8aAjXQWS0ibee2gRoXpU76lMSoadFWcGlVilBSNoYm3XyPLjNerHS
 35sleaYdcjXaO.MigztxUKmnUalNWHf1JXBY9VOHw2Fimt66.shU1alWL.9pzq3ZJOC0uKl78dv1
 VoGE7yIZjNKwXBLctxDFOmmlzUJT4Vr8YviLSLXJ.nvelq_JQkDJOI_AmfxXV1wQVXUXmmHS1SOT
 92lHezGNd.S.FDhsQVl9VS0INoVtxpf_NOn2Pj00IYfwJfXzCXI_0v6PSQatfuqOBZSb9A6TJsRQ
 u74siWKATQzRfzBBTaXBbPtCkVC_AvIfyvHlbI7zA67s8pD.zFn58kgdnixXT1KWAkUCFTfZobiO
 MHigq_3SlDCs.FS_XoqtbtT8zFsJW0yvbklMUnYd8m28JyT39KsR_FC_d0INXhiwrjD7RNNu7FIB
 6jzICwG2tVaF.lZKE3H3MRUysmIErAJA0QsCREiTYY74ewT.0dP8h4BdvLBLsSHzCw5dkGmR7D2n
 y.RgkobhEXXXJWymlSeJvD0UzrvvBtnEAFKSSSve_gc4XNicN735zauHlZzZSkqx1oovxNVyVG8i
 _D_ttTa0KOG_K8DLGb0MQnIqL10Q56cpCaHdgahUaoZSZUN7AWUJTsOWdfZHEUnrTrTwMd1rI6cC
 sI3EyrNiIehcvcQcu4tMS1V5Zk17m7DBU4Ej1b5TsNMJahQQUTeS1n_olvV7blLqTpyY4MGMIchl
 m9DP8ZiBSNxqGjyO48NEf5b9bDknGl1UxeO1it.vvGl8cGPOrQzs_TGbYQLFgWWhrfN_k0wvEgPK
 M3EEClCzDeregh7pbcQydnbDAcxFTcZOeSkv0uFWEWAlx_rmlRFRCRs3gxhIgW99nUcyz4SrVZmN
 BcYcJTeuc707NHaN3v1kJqSIP5wQSsuICrPpbuECUOcXL_.hPMFx5Kp2dB1csTArA6hBfLlA0HEH
 xMmDaUeAQ2PExWeRLdXKx1Hlzpg3V4DNPPPMMh7AJiJxO14X9Jkig9HFg_tmeLvwA2RJ3uzXsoSk
 wqkYzl4YHZPyFvJcU8hz5L9EpsWM7i7.fTve7jfaqsUMa1845Rm9zoY654GmNIehT0KwKEb5SIEd
 oqDokUR6mpggbYnbWlhrkoJd_qLnX5KfUzfcD8tmSlQYpvAziC8s8EPkg3fXhzhxw4hZHcwAUGiI
 fjbaVntCCZ9ji0EJIfEHOxkRgzwxPbkhQgCZguNaQTU9Ps_bYsRBJlQV2dt9e.ILSn6RmAoF8gB7
 xSo4o1xvXIVDTw6doZry1YiXMzsMmxkqJtffK2t_6RXrqnikpR3bxrJCy5YGM2tvKmr_hDN_Ixq1
 sleUMOZFxpTG2gZzctOC8eTZNftzjLfZThjBMSxcM9qnhkuU1qKSykwbXMG3Jbx575SRu.nkySCg
 cIJCOyQae18aQ.M6pFsXOKe8k11yNmmJbLgP21KRNK386Mci.qG.mT6sw3g7ufwOM0xMZ4snG5rk
 NNf1sHmncobyYOZIdHRT6GgtDnX6PUcuvw8TGJ_AJv8GI0wmnIzccAu4hnh6CHUzDTTOugTCUuqF
 CkPRxfhVOevm_YKs3qqlFA8K03pocXPT0P0g6aWMgJzqYavYAEhHRlBPl5xoxEM7Ks3wUFkyKvRG
 mGPMD8er4xH8XEbbo8r0Z9CjTfbrb6MC5u1Bzywd_t_S7wtvcwX2SLLSrES7ibx8mW49tH4h1R53
 0OJ88U4oJE48dtQ9h0q3RurXz4KDEVidM9v2iw5FQuS0Jxh7wdZWwhDHKD6cbjHRa5b9qnmpCyow
 P0cW4m42Eq3t9ScFDO_PGEJzjeopumXYqtsDs8XcirMjnB6jKX_gHWKYpW8BfFW.tbx4nsdLgfRd
 wcpUAcC61KpospyQmxhAQ6R7ELI_pIaYYQ3YW88dRNxneNNe6XFa.x7LPwZwZf34nNPdN7m7eIQ2
 l5sPBZmpouqllPEtlWVKX6Oz.RMCmtYL1UhNW4s.1WXgDIT2AlEkg_tEkevzYgoTVz1pOaxbQ73O
 wcYKEpJs-
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.bf2.yahoo.com with HTTP; Wed, 25 Aug 2021 14:29:39 +0000
Date: Wed, 25 Aug 2021 14:29:35 +0000 (UTC)
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID: <146269565.381604.1629901775157@mail.yahoo.com>
In-Reply-To: <CAL7q81tixB=BxZvRuLuJcOq1KNFpALzumZjWr7tR4AAv_NQo9A@mail.gmail.com>
References: <1603286005.133827.1629816455930.ref@mail.yahoo.com> <1603286005.133827.1629816455930@mail.yahoo.com> <881b16c4-161c-6edf-5a7f-de0cafdc47a0@gmail.com> <1800716940.152466.1629819588887@mail.yahoo.com> <10eb8f95-de74-f86d-e638-2d519f35ed33@gmail.com> <983558461.158295.1629821292551@mail.yahoo.com> <1cb46b16-2f3a-eb92-a55e-a8b09a64370d@gmail.com> <1502691808.229735.1629837681660@mail.yahoo.com> <CAL7q81tixB=BxZvRuLuJcOq1KNFpALzumZjWr7tR4AAv_NQo9A@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18906 YMailNorrin
Message-ID-Hash: DBO4UUJWBRSDPMZJIQBGSWO2B7PU5UCA
X-Message-ID-Hash: DBO4UUJWBRSDPMZJIQBGSWO2B7PU5UCA
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running rfnoc replay example on n310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DBO4UUJWBRSDPMZJIQBGSWO2B7PU5UCA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============0765099482264625365=="

--===============0765099482264625365==
Content-Type: multipart/alternative;
	boundary="----=_Part_381603_120387808.1629901775154"

------=_Part_381603_120387808.1629901775154
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks for the reply. I tried the CMake approach following the steps you m=
entioned but received an error when building.=C2=A0=20
First, I created CMakeLists which is pretty simple as shown below

cmake_minimum_required(VERSION 3.10)

#set the project name
project(Tutorial)

#add the executable
add_executable(replay_example rfnoc_replay_samples_1_from_file.cpp)

Then, I sourced the file, and set the flag for CMake. Lastly, inside of a b=
uild directory, I tried building the App and got the following printout=20

/usr/local/share/uhd/images/y/sysroots/x86_64-oesdk-linux/usr/libexec/arm-o=
e-linux-gnueabi/gcc/arm-oe-linux-gnueabi/9.2.0/real-ld: CMakeFiles/replay_e=
xample.dir/rfnoc_replay_samples_1_from_file.cpp.o:(.rodata._ZTVN5boost15pro=
gram_options11typed_valueIjcEE[_ZTVN5boost15program_options11typed_valueIjc=
EE]+0x1c): undefined reference to `boost::program_options::value_semantic_c=
odecvt_helper<char>::parse(boost::any&, std::vector<std::__cxx11::basic_str=
ing<char, std::char_traits<char>, std::allocator<char> >, std::allocator<st=
d::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>=
 > > > const&, bool) const'
/usr/local/share/uhd/images/y/sysroots/x86_64-oesdk-linux/usr/libexec/arm-o=
e-linux-gnueabi/gcc/arm-oe-linux-gnueabi/9.2.0/real-ld: CMakeFiles/replay_e=
xample.dir/rfnoc_replay_samples_1_from_file.cpp.o:(.rodata._ZTVN5boost15pro=
gram_options11typed_valueIdcEE[_ZTVN5boost15program_options11typed_valueIdc=
EE]+0x1c): undefined reference to `boost::program_options::value_semantic_c=
odecvt_helper<char>::parse(boost::any&, std::vector<std::__cxx11::basic_str=
ing<char, std::char_traits<char>, std::allocator<char> >, std::allocator<st=
d::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>=
 > > > const&, bool) const'
collect2: error: ld returned 1 exit status
CMakeFiles/replay_example.dir/build.make:83: recipe for target 'replay_exam=
ple' failed
make[2]: *** [replay_example] Error 1
CMakeFiles/Makefile2:75: recipe for target 'CMakeFiles/replay_example.dir/a=
ll' failed
make[1]: *** [CMakeFiles/replay_example.dir/all] Error 2
Makefile:83: recipe for target 'all' failed
make: *** [all] Error 2

I'm not sure if this is a boost issue or something else.




    On Tuesday, August 24, 2021, 07:21:17 PM EDT, Jonathon Pendlum <jonatho=
n.pendlum@ettus.com> wrote: =20
=20
 Hi Tellrell,
Do not use the Xilinx SDK, only the Yocto one, i.e.=C2=A0/usr/local/share/u=
hd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi
You need to source the "environment-setup-cortexa9t2hf-neon-oe-linux-gnueab=
i"=C2=A0file before cross compiling. If you use cmake with building your ap=
plication, you also need to set the flag "-DCMAKE_TOOLCHAIN_FILE=3D<path to=
 UHD>/host/cmake/Toolchains/oe-sdk_cross.cmake".
Also, if you just want to run the UHD example, it already exists on the N31=
0's root file system at: /usr/lib/uhd/examples/rfnoc_replay_samples_from_fi=
le
Jonathon
On Tue, Aug 24, 2021 at 4:42 PM Tellrell White via USRP-users <usrp-users@l=
ists.ettus.com> wrote:

 I'm trying to compile the source code using SDK 2019.1. I'm pointing the t=
he SDK project to the directory for sysroot and also to the directory for m=
y linux toolchain which are the following
 /usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi

/tools/Xilinx/SDK/2019.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gn=
ueabihf
I continue to get the following error stating that these files can't be fou=
nd, however, they do exist. And, when I try adding them within the project =
and refreshing nothing happens.=20


cannot find /lib/ld-linux-armhf.so.3=C2=A0=C2=A0=20

cannot find /lib/libc.so.6=C2=A0=C2=A0=C2=A0=20

cannot find /usr/lib/libc_nonshared.a=C2=A0=C2=A0=C2=A0=20

Am I going about building this application correctly? I thought that linkin=
g my project to sysroot which I installed for the n310 and to the SDK toolc=
hain( maybe I'm doing this incorrectly) would be pretty straightforward.










    On Tuesday, August 24, 2021, 12:41:05 PM EDT, Marcus D. Leech <patchvon=
braun@gmail.com> wrote: =20
=20
  On 2021-08-24 12:08 p.m., Tellrell White wrote:
 =20
=20
 Yep. Marcus you caught it!! That worked. Do I need to complete the section=
s on "Compiling MPM Natively" and "Building UHD"?? I understand that I need=
 the cross-compiler for compiling SW for the device but I don't see the nee=
d for completing the other two parts. Is there something additional that ne=
eds to be done other than cross compiling on the host machine and ssh'ing o=
ver the executable?=20
 =20
  As far as I know, you should be able to just cross-compile the code you'r=
e interested in.
=20
=20
   _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

 =20
------=_Part_381603_120387808.1629901775154
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpe3431cb5yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false"><div>Thanks for the reply. I=
 tried the CMake approach following the steps you mentioned but received an=
 error when building.&nbsp; </div></div><div><br></div><div dir=3D"ltr" dat=
a-setdir=3D"false">First, I created CMakeLists which is pretty simple as sh=
own below<br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div di=
r=3D"ltr" data-setdir=3D"false"><div dir=3D"ltr" data-setdir=3D"false"><pre=
 class=3D"ydp83236ee7default ydp83236ee7s-code-block"><code class=3D"ydp832=
36ee7hljs ydp83236ee7language-scss">cmake_minimum_required(VERSION <span cl=
ass=3D"ydp83236ee7hljs-number">3.10</span>)

<span class=3D"ydp83236ee7hljs-selector-id">#set</span> the project name
project(Tutorial)

<span class=3D"ydp83236ee7hljs-selector-id">#add</span> the executable
add_executable(replay_example rfnoc_replay_samples_1_from_file.cpp)<br><br>=
Then, I sourced the file, and set the flag for CMake. Lastly, inside of a b=
uild directory, I tried building the App and got the following printout <br=
><br><div>/usr/local/share/uhd/images/y/sysroots/x86_64-oesdk-linux/usr/lib=
exec/arm-oe-linux-gnueabi/gcc/arm-oe-linux-gnueabi/9.2.0/real-ld: CMakeFile=
s/replay_example.dir/rfnoc_replay_samples_1_from_file.cpp.o:(.rodata._ZTVN5=
boost15program_options11typed_valueIjcEE[_ZTVN5boost15program_options11type=
d_valueIjcEE]+0x1c): undefined reference to `boost::program_options::value_=
semantic_codecvt_helper&lt;char&gt;::parse(boost::any&amp;, std::vector&lt;=
std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allo=
cator&lt;char&gt; &gt;, std::allocator&lt;std::__cxx11::basic_string&lt;cha=
r, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; =
const&amp;, bool) const'<br>/usr/local/share/uhd/images/y/sysroots/x86_64-o=
esdk-linux/usr/libexec/arm-oe-linux-gnueabi/gcc/arm-oe-linux-gnueabi/9.2.0/=
real-ld: CMakeFiles/replay_example.dir/rfnoc_replay_samples_1_from_file.cpp=
.o:(.rodata._ZTVN5boost15program_options11typed_valueIdcEE[_ZTVN5boost15pro=
gram_options11typed_valueIdcEE]+0x1c): undefined reference to `boost::progr=
am_options::value_semantic_codecvt_helper&lt;char&gt;::parse(boost::any&amp=
;, std::vector&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;c=
har&gt;, std::allocator&lt;char&gt; &gt;, std::allocator&lt;std::__cxx11::b=
asic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&g=
t; &gt; &gt; &gt; const&amp;, bool) const'<br>collect2: error: ld returned =
1 exit status<br>CMakeFiles/replay_example.dir/build.make:83: recipe for ta=
rget 'replay_example' failed<br>make[2]: *** [replay_example] Error 1<br>CM=
akeFiles/Makefile2:75: recipe for target 'CMakeFiles/replay_example.dir/all=
' failed<br>make[1]: *** [CMakeFiles/replay_example.dir/all] Error 2<br>Mak=
efile:83: recipe for target 'all' failed<br>make: *** [all] Error 2<br></di=
v><div><br></div><div dir=3D"ltr" data-setdir=3D"false">I'm not sure if thi=
s is a boost issue or something else.<br></div><br></code></pre></div><div>=
<br></div></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div>
       =20
        </div><div id=3D"yahoo_quoted_0629161307" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, August 24, 2021, 07:21:17 PM EDT, Jonathon =
Pendlum &lt;jonathon.pendlum@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv2607919405"><div><div dir=3D"ltr">Hi Tel=
lrell,<div><br clear=3D"none"></div><div>Do not use the Xilinx SDK, only th=
e Yocto one, i.e.&nbsp;<span style=3D"font-size:13px;font-family:Helvetica,=
 Arial, sans-serif;">/usr/local/share/uhd/images/y/</span><span style=3D"fo=
nt-size:13px;font-family:Helvetica, Arial, sans-serif;">sysroots/cortexa9t2=
hf-neon-oe-</span><span style=3D"font-size:13px;font-family:Helvetica, Aria=
l, sans-serif;">linux-gnueabi</span></div><div><br clear=3D"none"></div><di=
v>You need to source the "environment-setup-cortexa9t2hf-neon-oe-linux-gnue=
abi"&nbsp;file before cross compiling. If you use cmake with building your =
application, you also need to set the flag "-DCMAKE_TOOLCHAIN_FILE=3D&lt;pa=
th to UHD&gt;/host/cmake/Toolchains/oe-sdk_cross.cmake".</div><div><br clea=
r=3D"none"></div><div>Also, if you just want to run the UHD example, it alr=
eady exists on the N310's root file system at: /usr/lib/uhd/examples/rfnoc_=
replay_samples_from_file</div><div><br clear=3D"none"></div><div>Jonathon</=
div></div><br clear=3D"none"><div class=3D"yiv2607919405gmail_quote"><div c=
lass=3D"yiv2607919405yqt7208477581" id=3D"yiv2607919405yqt79511"><div class=
=3D"yiv2607919405gmail_attr" dir=3D"ltr">On Tue, Aug 24, 2021 at 4:42 PM Te=
llrell White via USRP-users &lt;<a rel=3D"nofollow noopener noreferrer" sha=
pe=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
 href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br clear=3D"none"></div><blockquote class=3D"yiv2607919405gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex;"><div><div style=3D"font-family:Helvetica, Arial, sa=
ns-serif;font-size:13px;"><div></div>
        <div dir=3D"ltr">I'm trying to compile the source code using SDK 20=
19.1. I'm pointing the the SDK project to the directory for sysroot and als=
o to the directory for my linux toolchain which are the following</div><div=
 dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"> <span>/usr/local/sh=
are/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi<span><br clear=
=3D"none"></span></span></div><div dir=3D"ltr"><span><span><br clear=3D"non=
e"></span></span></div><div dir=3D"ltr"><span><span>/tools/Xilinx/SDK/2019.=
1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf</span></span></=
div><div dir=3D"ltr"><span><span><br clear=3D"none"></span></span></div><di=
v dir=3D"ltr"><span><span>I continue to get the following error stating tha=
t these files can't be found, however, they do exist. And, when I try addin=
g them within the project and refreshing nothing happens. <br clear=3D"none=
"></span></span></div><div dir=3D"ltr"><span><span><br clear=3D"none"></spa=
n></span></div><div><span></span><br clear=3D"none"><div>cannot find /lib/l=
d-linux-armhf.so.3&nbsp;&nbsp; <br clear=3D"none"></div><br clear=3D"none">=
<div dir=3D"ltr"><div><div>cannot find /lib/libc.so.6&nbsp;&nbsp;&nbsp; <br=
 clear=3D"none"></div><div><br clear=3D"none"><div>cannot find /usr/lib/lib=
c_nonshared.a&nbsp;&nbsp;&nbsp; <br clear=3D"none"></div><div><br clear=3D"=
none"></div><div dir=3D"ltr">Am I going about building this application cor=
rectly? I thought that linking my project to sysroot which I installed for =
the n310 and to the SDK toolchain( maybe I'm doing this incorrectly) would =
be pretty straightforward.<br clear=3D"none"></div><br clear=3D"none"></div=
><div dir=3D"ltr"><div><br clear=3D"none"></div></div><br clear=3D"none"></=
div><div><br clear=3D"none"></div></div><br clear=3D"none"></div><div dir=
=3D"ltr"><span><br clear=3D"none"></span></div><div dir=3D"ltr"><span></spa=
n><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div d=
ir=3D"ltr"><br clear=3D"none"></div><div><br clear=3D"none"></div>
       =20
        </div><div id=3D"yiv2607919405gmail-m_4135037161792215501yahoo_quot=
ed_0310847195">
            <div style=3D"font-family:Helvetica, Arial, sans-serif;font-siz=
e:13px;color:rgb(38,40,42);">
               =20
                <div>
                    On Tuesday, August 24, 2021, 12:41:05 PM EDT, Marcus D.=
 Leech &lt;<a rel=3D"nofollow noopener noreferrer" shape=3D"rect" ymailto=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank" href=3D"mailto:patchv=
onbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"yiv2607919405gmail-m_4135037161792215501yiv=
8850409427"><div>
    <div id=3D"yiv2607919405gmail-m_4135037161792215501yiv8850409427yqtfd55=
190"><div>On 2021-08-24 12:08 p.m., Tellrell
      White wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div></div><div id=3D"yiv2607919405gmail-m_413503716179=
2215501yiv8850409427yqtfd67013"></div><div><div style=3D"font-family:Helvet=
ica, Arial, sans-serif;font-size:13px;"><div id=3D"yiv2607919405gmail-m_413=
5037161792215501yiv8850409427yqtfd55908">
        </div><div dir=3D"ltr"><div id=3D"yiv2607919405gmail-m_413503716179=
2215501yiv8850409427yqtfd79456">Yep. Marcus you caught it!!
          That worked. Do I need to complete the sections on "Compiling
          MPM Natively" and "Building UHD"?? I understand that I need
          the cross-compiler for compiling SW for the device but I don't
          see the need for completing the other two parts. Is there
          something additional that needs to be done other than cross
          compiling on the host machine and ssh'ing over the executable?
          </div><br clear=3D"none">
        </div>
        <br clear=3D"none">
      </div>
   =20
    As far as I know, you should be able to just cross-compile the code
    you're interested in.<div id=3D"yiv2607919405gmail-m_413503716179221550=
1yiv8850409427yqtfd36793"><br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
  </div></div></div></div>
            </div>
        </div></div>_______________________________________________<br clea=
r=3D"none">
USRP-users mailing list -- <a rel=3D"nofollow noopener noreferrer" shape=3D=
"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br cl=
ear=3D"none">
To unsubscribe send an email to <a rel=3D"nofollow noopener noreferrer" sha=
pe=3D"rect" ymailto=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_=
blank" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@li=
sts.ettus.com</a><br clear=3D"none">
</blockquote></div></div>
</div></div></div>
            </div>
        </div></body></html>
------=_Part_381603_120387808.1629901775154--

--===============0765099482264625365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0765099482264625365==--
