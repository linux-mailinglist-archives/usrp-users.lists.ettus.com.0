Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DB483EC3C
	for <lists+usrp-users@lfdr.de>; Sat, 27 Jan 2024 10:06:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A94F0384C42
	for <lists+usrp-users@lfdr.de>; Sat, 27 Jan 2024 04:06:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706346417; bh=w8avCt9yN8ve6ajM+nZal3tVWkeAijLNCsudPRWhJDQ=;
	h=Date:To:In-Reply-To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=FVCdjHGF6E/mnFZgYz+fWetTLwoZVLI4wVf9CocCUpMU+8jZAPhMcODVqRXgSNQFQ
	 AF67I1qMq3esOJ6WQ9dQP5dNh7DrjjqTR3tf7+uacFylPq0C+8FzMWTizSeAyIud/x
	 tx+6D/kdxyb3cFJASKDyH2WyDqotLrmBI6oSvFUxzn5Tw5a9MNcbvds5MstOs1r5uW
	 sIlRSAip9MWND6NKpErtWX+sAs3DuGLc7B5PQeI9LNewolW+0ljZ6npvnlg/JFSsEb
	 gcQg2IHKzfUMK8Pg5DQ6fLUlQJPkOoNC4rrSGeOwy5R2W8idbRF9hMB1MLgZ2QyLcl
	 2UCvl9DsBEoBA==
Received: from sonic314-15.consmr.mail.bf2.yahoo.com (sonic314-15.consmr.mail.bf2.yahoo.com [74.6.132.125])
	by mm2.emwd.com (Postfix) with ESMTPS id 09044384BAA
	for <usrp-users@lists.ettus.com>; Sat, 27 Jan 2024 04:06:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="F5e1n33y";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1706346400; bh=0X9xwbWE4NAE2Yc3o5foRJnmMiwwEn2NZQCSB2X8vmY=; h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=F5e1n33y3ltQuvPzocA5tjk3d1vitO8qQ/YLYXenc8uxVsvIsbHLtvYeF4eaf+dBizl4ahBXTwmdPLShTDuq9brmtZMoZ8T3aJCbUI5srxsOvxTmQlSFQjqWgT+/koWi1snFq131bZCifKNCd8Ik5UUziD5YW1oJPow7EZuuwIYw5lAwFTBx9NRa2qeTlC6QL9y7ejO34vPgl2cCzHc+A98At364hTNMPoG2oi7NFGgoP52OmQQQGYmgEYzSYk4xC8cRdA4daCG4JeywwzMDxBvUBumC6hjzjljMisRh1ce+XnGCHabkM9iuxTkDmRsjKw3XZNvEHMKS/H0jtX7Jkw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1706346400; bh=K635T6L86CrOUOERqofymUUGE8N3jkQBYo0EA18inGZ=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=hCi1MKD6LSHoHB6RWXzwmBiMm0RJlwkkBTMq+ZmmqxcSdXJwrC0thLw5BvOMui3KqWoUNO5pZgIrKXXNFcbDh1/KqYlb05fJvlgQ+cDHl75adsLxrDuFNkHbh/pooyjwMjCJ6Iv/PQEdbeMJ+mpwjhC2VoTLIYPA6FHv/6DfanmjezMo/YapJd85dkvDgMtsHotOetcL7WjucULoQ49OknFvxYFF+5paDpaPgdGD2ZeSdoZuMAnQqZHQrBMD68sVhOvZI/DeGpIt5fc7LHSWGlUaJ7Yc6lmV5MnXpAhWxtG4Kk6qQyHuOdZkzzKypWW0bDvRmFL1aR8+Nydks0EeKw==
X-YMail-OSG: 5F4cPFAVM1mhnisl66h3Nycf6UDiSQwaWF0FD2N4jSYJBGq7dWvuL3qaE4ZfLZ6
 M8A4z_hXJipXwsXu0Y0iZG0y4ldTwmuHhqDWBVyA7G7UeGLEp2r36khD8c2nLxAID3WaYk9a.96y
 o6H8G1H8_52jzkrrkoLVY3iBkOuIaUMJwfl.wUDhfDCVNDIJS3_597eJvcmVs1hNrcwZxWMk44q0
 Mn9KI8AXZyuq4A7Kif.dNpAdHxE.2Tx9uno1gMDP0CLWEIx5udnWLLMjG0PeSc7q07JBAWNrh16P
 tywOa.e.A3oYK4xF_XHRooH6jT9gfuWG6RnA1yra.a.GZ.0Ch9LKBW5rh9vaUaKVDUG0b9yT..si
 65d2_Fgi8RHEWpcUdn5SpW.LgajwQYGjOCsMQHHakBx6mpyyPenvhsxa8X25C7WmPtoPr.5Jp.A3
 EdI_yE139_f3oLxukKlQD2ymPtB1.VGGP0ByRLUiHoYLXPZhxbiHBE2eCKwjtlDsrh1G7X7mPteB
 AqKqwI4Ddc2qAgcDs6MpTznxwp2CBgk5u._QKAPY4rPeV4qMYUqcbOtYFOw9NycrtdeUP_Yjwe01
 zPKbOrR_5KDCVar.41zfz2tYfPYfEg2Asbyu6Vj8yrbMjXfJ4RE5avSJyw5gRXhi8VVO5Gp4.Iu3
 Q6nZjZ5262phfMaVjt2TZA0LV9lhiEik6INeQNigTb.p_WWP2CT44wx4q1N4eWU8DuNYXxOQB9o8
 c4418zYaoov0CFm1SUM8KdGFppZ3E5wYU3oooND_rq9.woBRlerrxuX4mS3JLFvBkyMl79_i.czO
 YpsTR02gEl24sSKZYPRVr_hfVrJzJ4sDhpENG3W3KlMcnYmPIFzH9b02wz3gvRTKOwX_f5lt2.Mp
 gkGr0xxrL9sAMTw_jg9uv9IIaLlUKV.ntm_uVaWOUU7nLYx8Q76Xh5_cjOT54uQWqIhgsSH36GpS
 .Xb.WuYwkd.9FDGt4E5ye5GORiTYPgKRhRTzTXAdu9uLqOW1JceVekD2vqN2.x2_rNE.jRO.5vJq
 aUG7u3k70WiCQe3x5OsIiVYyxoPWdkJZafRU_1z0LQO6lf5PH6GPydbQnbT.psY3oAKQEfCCcFtK
 G0nePLskVaoLzJHBsIaXJ2yMhBhbpN5Yw6lkgdBcVQR.A2RFYdlm4FqedRjupksud9FS0GJdFBtb
 TmwuCXiJLQyPESyEyMYQwDbAWtjdzN_J.DfLjBk8Hot82ujibR7oWzaGWXxaMKElxm0cGBkHsKWl
 8y3QJfpFJlAEVMPuqbCHAaqbFO8BTjBFQGo8oPHCz5WjU5zfQcyXh.pvwx8QwjueLDkWu5uuqSve
 i5XAGxvrkEhmSmDTv3bO4xpIgTYn3CRjpDThdwNOm6jRtSEqEKHOgMHy7hhFtkVfGyYkhkkmwveG
 eh8XLrbsgalObywDU.6TjVCxyMoWQt7ZgBXWsBFGL8SiL9KGRKOnyDJJBuXmE08KBH1Y7bclGZlG
 2mb3d2mMkmXCXZSF9uno5vEUbnvxoQpVw5mzu67zfDyGk3KHxA3gwNOpqJC9oq.HvLm2DfU6byig
 HrQFeikTFs3SB1Er456fP.iSqcU_L3PeLJdAuqQJs04K10D7mbACVOvjuWP4xc5q._4IdIQxG2L0
 C2KkeTfHgj3W1g6FLWcehZpYA.yE_Q8xNbCsBIODTWLh2DdXi3WNYn5VpNdiduW6zDJJvIc.n6wE
 8fkJTr6o72F9c3X.MAPKOWm7qTdxEtHpfk1eiPs.F0D8gHP.ZQjAPLfASKNDSeiVvVGp1hA49b3a
 1l8tGWY_HNRMVGghj_datXPosZl3FXHsQtBJAxwcgvQnLnRpEba7nwGMSnzsism9pzbGcHNT_VzZ
 OfgV9AUl3bzw3UCU0aPl_Vu6DHGYIGftMAi.6izjIt8hhNWG8tPwirHWxGgHK774Pr965ZMnp1Ej
 hvjsn5UVHjcrqWmiTQklaVDRrkJU2nRE_TYn2fCBN9HWp4f47FVBJYvw2I3u.KEhUJtIkJ7eSCYU
 dZnwa6bv6XUbKwBSwy90uI4jCEbKOVBW2lT365FOtrs68HiT8olhJDbjV091Va.v_3_prQHheVxQ
 E8VVL06ILAg1sYHvDMC.RaEFG5_CtiESnpMTRxbGYlCrKuN_itEGfrjHavmv0UlPNZhO2o4c08UQ
 to7hW6xlwHo80WUyj_Sb_aNk9GrYuP8QlIofoys0dYIHWkMJ0l9KaGbgiAQHreXvpn1AGutRs.ZP
 5mdd2210U.bNGqwVJY6z3VQgBQX2WH7XGPH9.1XLNJGM3EJBm1_jae.7I7VOmeUsBKjcbl7S9pRb
 .0M6dMkQbem.Vku5YIZkeG7t7ADUj8IsNfPyLjEBCxZkIFDhPwucLQOjQC2PtZfCM79d.AphKn4C
 SD5M-
X-Sonic-MF: <bws1799@yahoo.com>
X-Sonic-ID: 1df4c3d6-408d-403d-9599-2bc959310c78
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.bf2.yahoo.com with HTTP; Sat, 27 Jan 2024 09:06:40 +0000
Date: Sat, 27 Jan 2024 09:06:34 +0000 (UTC)
To: <patchvonbraun@gmail.com>, Rob Kossler <rkossler@nd.edu>
Message-ID: <1170333405.876748.1706346394849@mail.yahoo.com>
In-Reply-To: <6decf301-6986-4310-817f-206f76f45504@gmail.com>
References: <jcruQmHQZeKDZZaLSX1gllzmNKa3cT9CH517aGVnU@lists.ettus.com> <ab8ed2aa-f7a2-413e-83e9-c79a1e54c1cf@gmail.com> <CAB__hTRoWd8xwFkOqVKsVh5nCo8b_Yi59Jcya-KHKihr=g1URQ@mail.gmail.com> <6decf301-6986-4310-817f-206f76f45504@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22046 YahooMailAndroidMobile
Message-ID-Hash: 4JWNOJVSXAAET2T7UFTZXYSFZP3E4HOH
X-Message-ID-Hash: 4JWNOJVSXAAET2T7UFTZXYSFZP3E4HOH
X-MailFrom: bws1799@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting Dropped packets
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4JWNOJVSXAAET2T7UFTZXYSFZP3E4HOH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: bws1799--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: "bws1799@yahoo.com" <bws1799@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4673757213123844085=="

--===============4673757213123844085==
Content-Type: multipart/alternative;
	boundary="----=_Part_876747_374772270.1706346394847"

------=_Part_876747_374772270.1706346394847
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I 2nd the "use a RAM disk if you can" approach. RAM is cheap compared to th=
e time to flush out the gremlins in high rate continuous (or almost continu=
ous) record applications.
Are you sending burst commands to achieve the 80us/1ms? Can you continuousl=
y recv and just drop the samples you don't want in software?
Check cables / transceivers! With an x410 had a direct attach copper qsfp28=
 to 4xsfp28 cable that would work most of the time and then give me issues,=
 a simple reseat would usually clear up. Moved that system one day, grabbed=
 a new (same part number mellanox) cable out of convenience and drops were =
basically non existent, never used old cable again.
Below is my experience with a multi-x310 continuous full rate record system=
.

I used gnuradio with uhd 3.15 to build my application (python generated fro=
m grc so your results my vary), make sure realtime scheduling is on and act=
ually working (check with top). Look at changing the default gnuradio real-=
time "nice" level to be higher than all other normal tasks but not higher t=
han fundamental os/disk/interrupt tasks. Use individual streamers and separ=
ate threads for each channel (why I used gnuradio).=C2=A0

Definitely follow https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_an=
d_TricksCPU gov is a must (and max you CPU fan for long duration records)Th=
read priority is a mustIncreased Network buffers is a must8000-9000 jumbo f=
rames/MTU is a mustIncreased ring buffers is good practice=C2=A0DPDK has sh=
own impressive CPU load reduction although I did not use itI never realized=
 a quantifiable performance improvement with disabling hyper threading and =
disabling the KPTI protections (although I never remember turning KPTI back=
 on). Disabling hyper threading limited me in my later thread affinity opti=
mization so I know I had hyper threading enabled.
Make sure your writing to disk is optimized. I used PWRITE with multiple op=
en flags, I think O_DIRECT O_BINARY O_SYNC O_LARGEFILE and then posix_fadvi=
se WILLNEED NOREUSE SEQUENTIAL. Not saying all are necessary just what I en=
ded up at. Write in your storage medium's block size (fill in zeros if not =
a block at the end). Use a multiple of that block size as your write length=
. Do not assume more is better test different multiples!!! I think a multip=
le that made each write just smaller than the L3 cache of the machine worke=
d best for me. Also store in over the wire format (otw) usually complex INT=
16 (32bits/sample) rather than typical CPU format complex float (64bits/sam=
ple). This reduces the conversion overhead, throughput required and file si=
ze.=C2=A0
The sporadic drops you are experiencing sounds familiar. I had to "strategi=
cally" lock the thread affinity for the application threads, uhd background=
 threads, mellanox interrupt processing and the GNOME desktop interrupt pro=
cessing threads to separate but appropriate cores in a multi-node machine (=
recommend isolating those nodes as well). It had numerous NVME drives so wr=
ite benchmarking was 4-5x the required throughput. I remember the problem s=
eemed to be more of a latency/core hopping issue for me at least.=C2=A0I al=
so switched to a realtime kernel (Ubuntu 18). It reduced disk throughput be=
nchmarks dramatically but helped me iron out the last few hiccups.
My system did not like to operate without drops right after boot. I always =
had to "warm up" the machine by running a collect for 5-10min first and alw=
ays had numerous drops. But after that, I could complete 30+ min collects e=
rror free. And when paired with code to track number and time of dropped sa=
mples and insert zeros real-time, the system created binary files that were=
 sample/byte/time aligned for multiple channels at full rate regardless if =
drops occured or not.
I also always kept a large floor fan moving air around the radios, no quant=
ifiable data to support this need but felt like I had less issues and kept =
radios cool when operating in close proximity to one another.=C2=A0
This was done without DPDK. I tired DPDK at first but with it seemed to hav=
e more issues than without it and never tried it again with all the setting=
s optimization. CPU base speed was 2.9GHz boost upto mid 3.x GHz, I typical=
ly recommend a base of 3.0-3.5GHz and a boost over 4.0 GHz to stream 200MSP=
S @ 32 bits/sample without much pain.=C2=A0
I always wanted to try not using an desktop environment to see if that avoi=
ded some of the optimizations I had to do, in particular the thread affinit=
y/interrupt optimizations.
=20
=20
  On Wed, Jan 24, 2024 at 4:20 PM, Marcus D. Leech<patchvonbraun@gmail.com>=
 wrote:   _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20

------=_Part_876747_374772270.1706346394847
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div id=3D"yiv7079161702"><div><div>I 2nd the "use a RAM disk if you can" a=
pproach. RAM is cheap compared to the time to flush out the gremlins in hig=
h rate continuous (or almost continuous) record applications.</div><div><br=
 clear=3D"none"></div><div>Are you sending burst commands to achieve the 80=
us/1ms? Can you continuously recv and just drop the samples you don't want =
in software?</div><div><br clear=3D"none"></div><div>Check cables / transce=
ivers! With an x410 had a direct attach copper qsfp28 to 4xsfp28 cable that=
 would work most of the time and then give me issues, a simple reseat would=
 usually clear up. Moved that system one day, grabbed a new (same part numb=
er mellanox) cable out of convenience and drops were basically non existent=
, never used old cable again.</div><div><br clear=3D"none"></div><div>Below=
 is my experience with a multi-x310 continuous full rate record system.<br =
clear=3D"none"></div><div><br clear=3D"none"></div><div>I used gnuradio wit=
h uhd 3.15 to build my application (python generated from grc so your resul=
ts my vary), make sure realtime scheduling is on and actually working (chec=
k with top). Look at changing the default gnuradio real-time "nice" level t=
o be higher than all other normal tasks but not higher than fundamental os/=
disk/interrupt tasks. Use individual streamers and separate threads for eac=
h channel (why I used gnuradio).&nbsp;<br clear=3D"none"></div><div><br cle=
ar=3D"none"></div><div>Definitely follow https://kb.ettus.com/USRP_Host_Per=
formance_Tuning_Tips_and_Tricks</div><div>CPU gov is a must (and max you CP=
U fan for long duration records)</div><div>Thread priority is a must</div><=
div>Increased Network buffers is a must</div><div>8000-9000 jumbo frames/MT=
U is a must</div><div>Increased ring buffers is good practice&nbsp;</div><d=
iv>DPDK has shown impressive CPU load reduction although I did not use it</=
div><div>I never realized a quantifiable performance improvement with disab=
ling hyper threading and disabling the KPTI protections (although I never r=
emember turning KPTI back on). Disabling hyper threading limited me in my l=
ater thread affinity optimization so I know I had hyper threading enabled.<=
/div><div><br clear=3D"none"></div><div>Make sure your writing to disk is o=
ptimized. I used PWRITE with multiple open flags, I think O_DIRECT O_BINARY=
 O_SYNC O_LARGEFILE and then posix_fadvise WILLNEED NOREUSE SEQUENTIAL. Not=
 saying all are necessary just what I ended up at. Write in your storage me=
dium's block size (fill in zeros if not a block at the end). Use a multiple=
 of that block size as your write length. Do not assume more is better test=
 different multiples!!! I think a multiple that made each write just smalle=
r than the L3 cache of the machine worked best for me. Also store in over t=
he wire format (otw) usually complex INT16 (32bits/sample) rather than typi=
cal CPU format complex float (64bits/sample). This reduces the conversion o=
verhead, throughput required and file size.&nbsp;</div><div><br clear=3D"no=
ne"></div><div>The sporadic drops you are experiencing sounds familiar. I h=
ad to "strategically" lock the thread affinity for the application threads,=
 uhd background threads, mellanox interrupt processing and the GNOME deskto=
p interrupt processing threads to separate but appropriate cores in a multi=
-node machine (recommend isolating those nodes as well). It had numerous NV=
ME drives so write benchmarking was 4-5x the required throughput. I remembe=
r the problem seemed to be more of a latency/core hopping issue for me at l=
east.&nbsp;</div><div>I also switched to a realtime kernel (Ubuntu 18). It =
reduced disk throughput benchmarks dramatically but helped me iron out the =
last few hiccups.</div><div><br clear=3D"none"></div><div>My system did not=
 like to operate without drops right after boot. I always had to "warm up" =
the machine by running a collect for 5-10min first and always had numerous =
drops. But after that, I could complete 30+ min collects error free. And wh=
en paired with code to track number and time of dropped samples and insert =
zeros real-time, the system created binary files that were sample/byte/time=
 aligned for multiple channels at full rate regardless if drops occured or =
not.</div><div><br clear=3D"none"></div><div>I also always kept a large flo=
or fan moving air around the radios, no quantifiable data to support this n=
eed but felt like I had less issues and kept radios cool when operating in =
close proximity to one another.&nbsp;</div><div><br clear=3D"none"></div><d=
iv>This was done without DPDK. I tired DPDK at first but with it seemed to =
have more issues than without it and never tried it again with all the sett=
ings optimization. CPU base speed was 2.9GHz boost upto mid 3.x GHz, I typi=
cally recommend a base of 3.0-3.5GHz and a boost over 4.0 GHz to stream 200=
MSPS @ 32 bits/sample without much pain.&nbsp;</div><div><br clear=3D"none"=
></div><div>I always wanted to try not using an desktop environment to see =
if that avoided some of the optimizations I had to do, in particular the th=
read affinity/interrupt optimizations.</div><div><br clear=3D"none"></div> =
<br clear=3D"none"> <blockquote style=3D"margin:0 0 20px 0;"> <div style=3D=
"font-family:Roboto, sans-serif;color:#6D00F6;"> <div id=3D"yiv7079161702yq=
tfd10449" class=3D"yiv7079161702yqt1534998594"><div>On Wed, Jan 24, 2024 at=
 4:20 PM, Marcus D. Leech</div><div>&lt;patchvonbraun@gmail.com&gt; wrote:<=
/div> </div></div><div id=3D"yiv7079161702yqtfd07941" class=3D"yiv707916170=
2yqt1534998594"> <div style=3D"padding:10px 0 0 20px;margin:10px 0 0 0;bord=
er-left:1px solid #6D00F6;"> ______________________________________________=
_<br clear=3D"none">USRP-users mailing list -- <a rel=3D"nofollow noopener =
noreferrer" shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a><br clear=3D"none">To unsubscribe send an email to <a rel=3D"=
nofollow noopener noreferrer" shape=3D"rect" ymailto=3D"mailto:usrp-users-l=
eave@lists.ettus.com" target=3D"_blank" href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"> </div=
> </div></blockquote></div></div>
------=_Part_876747_374772270.1706346394847--

--===============4673757213123844085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4673757213123844085==--
