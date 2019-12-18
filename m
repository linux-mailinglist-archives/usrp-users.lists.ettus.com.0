Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E436912465F
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 13:02:12 +0100 (CET)
Received: from [::1] (port=46920 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihY1q-000531-VQ; Wed, 18 Dec 2019 07:02:10 -0500
Received: from sonic307-56.consmr.mail.ne1.yahoo.com ([66.163.190.31]:37157)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1ihY1n-0004wT-41
 for usrp-users@lists.ettus.com; Wed, 18 Dec 2019 07:02:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1576670486; bh=10hdt4AAx7M5HLGq+sMnjMBoP3eQMo7bNag1vmIJ/L4=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=uAwiYhr/peO8ohjl6QYW+Mafc93HkrPgfu+t/1KIwXU3fFaI4QbGNQyOPvSKozshMHZQVrtDnImkcJk5843RhFBviB4jy5dKtmUf6PV6bLArKb2YsG3UhMJ1o3TFvZdNrCDl+V59ft8c4y8a/uJRiIWUce/tWk01zC1u8+C8sNjwIwAnCS2YFkl3MiJOw/sSDTD4nj9Wf3wX64haMyUrOCxgEQuCzDGP2NCz9Ynf9DBkni9XAuxsNCuZr3DoX6PzrP6cHV3salvA/0B7jysCOQnWEyw5hm2/cYrmeRNS3WPcfhTEenvxkKiMgs9Lmlh+fC6UCWFxE0GlOfAi9EBrkA==
X-YMail-OSG: TgbqVNIVM1k__4852tumn7DL8uxJ7gh.82p9hN57rDbsEOUCfb_z_1WxvlNma62
 GPINL91LKXCxtucWnNol.9syPYlIVx42GcGK8YOuzqJe0mviOXA2aSYxBf0S5F_rPV_sCPbRf5ci
 EBsVOG2Cb2PSlYD5fdp_tgON6asDYpbkjaGM7svh1QSpHN1S98JvrzpLXQHyiHOXaWzXODC8me97
 qZvfyFzWiaHbohUjB_zUjzXw42QstPJ2C9ZhiSDJiZPRwls9ZjrbDkoPclI2BL5Ps_uwkDdSUKQF
 0XDy1aVYi9eMHMvYPaMXXGV.5aGlv8F.Aq8Qzj.QK1yRtJejh7iRr_0xAVl7C4.TJuW2n4s.q4cy
 xOK5wFYLrmQsstAcv9odLgmajwzfER18pZmHV3pDn2SfVuIT4FRCKbE1yiD6S66FsMj3b8VzEGfB
 0tJwpdZSuuTvNbh03nkcaTEm8MCGVJRqVNYxFQ6an2ECmOYWtmqgInRIgCVKTk.YHzcJMefaZlwZ
 PwaFjL872va0oXqOq_bdCZIeOtcbLhpcYoNhQ9K.slDJJ7ULuqrNBUMeEtMzOWP8OaDfNhwtC2LB
 mlJN0rAygbInX3tJmzLcXetS12IK9efMMlg6N.xBrb1Rz.DNtleOloQ2dZ4FHs3ACTdt9WuEsYNr
 CEnYa1NILOTaZc6F3Qa_WHoGzPKqoL2srrNycbokysX8VdeXTuSyleGenHr0Xx2E5UB1IroEIw92
 NpolmofOWJCG9dWytUHPTm8Dp6t.mxigeTrTPA7P_udpeSYzIdnHO80XF4Aa16s8RQF2abmripoF
 RUaryVDbOz73HtkmeOm8Dpwgo0tNHC.ZduNd1Gta_qq5wB_FOLHc9na42ALiKRS3AQNUU9b6IHbi
 xettQ0AcbAA1ACWjcAnEv4icE2bHDh5rV_0pw6ruDuDRqxI7TX31o666vnxaSQ5p_cCvUB1cjl87
 mjY26EHZ5LrE95tAvGzAnfzfY1sdzCWfCUcIpwghVSDyJjX.tPXtT7UlRJB0xID5BZ8LrygAqcuO
 meydn5MuWBDql3JORW9hYwuD_Xhpvs.nMw9ZVtvdtl385uPIwKaDL.NPwTFwfuGGZlnn0wQoMqM0
 404l2b_8yAkATbpk6Hyk3TMdyt2ELNPLy.I1effe3ZkBYmVrwuS8uz9YWVfysGVfn.y8ecenFXDP
 n7UKkTkshjaqgsyUu9Aaz7aRuGcek6ki_PSwOfYsf8r1zOHkgk5_Y7RUDbTDRYMVN0ii23YW9AQ6
 iIICT.WfBiWarXFfQK52zImVVGccjSpkGKaH4E4pYxLDfLhgP79ZFeLMGsSbJq6j036l4x2YcGkT
 86aKx8hSMOsitnlaQG_BrjhSc8CWOfex.qKE4xQE37w--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.ne1.yahoo.com with HTTP; Wed, 18 Dec 2019 12:01:26 +0000
Date: Wed, 18 Dec 2019 12:01:24 +0000 (UTC)
To: Sam Reiter <sam.reiter@ettus.com>
Message-ID: <775991377.807374.1576670484801@mail.yahoo.com>
In-Reply-To: <1913144600.796210.1576668010291@mail.yahoo.com>
References: <1273926885.14075492.1576508432546.ref@mail.yahoo.com>
 <1273926885.14075492.1576508432546@mail.yahoo.com>
 <CANf970ZfAdBmr0QgutUbQoJseNF6F24W78XvhbKWzbcheDRRVQ@mail.gmail.com>
 <1913144600.796210.1576668010291@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (X11; Linux x86_64;
 rv:68.0) Gecko/20100101 Firefox/68.0
Subject: Re: [USRP-users] set_tx_freq is not functioning properly
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: voonna santosh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: voonna santosh <santu_voonna@yahoo.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6823998190355882216=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6823998190355882216==
Content-Type: multipart/alternative; 
	boundary="----=_Part_807373_251252201.1576670484799"
Content-Length: 12910

------=_Part_807373_251252201.1576670484799
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 One more thing to add:If I run benchmark_rate with out any modifications, =
then the output in scope if perfect.=20

I have added the following code snippet to configure the tx_freq and there =
is nothing observed in scope.
if (vm.count("tx_freq")){
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for(size_t ch =3D 0; ch < tx_channel_nums.si=
ze(); ch++) {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 std::cout << boost::format("Sett=
ing TX Freq: %f MHz...") % (tx_freq/1e6) << std::endl;
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd::tune_request_t tune_request=
(tx_freq);
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if(vm.count("int-n")) tune_reque=
st.args =3D uhd::device_addr_t("mode_n=3Dinteger");
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp->set_tx_freq(tune_request, =
tx_channel_nums[ch]);
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 std::cout << boost::format("Actu=
al TX Freq: %f MHz...") % (usrp->get_tx_freq(tx_channel_nums[ch])/1e6) << s=
td::endl << std::endl;
=C2=A0=C2=A0=C2=A0 }
}
Command used for testing: ./benchmark_rate --args=3D"addr=3D192.168.40.2" -=
-channels=3D"0" --tx_rate 50e6 --tx_freq 20e6 --duration 50


NOTE: I am using Agilent E4402B to analyze the spectrum (9KHz to 3 GHz)

Thanks,Santosh





    On Wednesday, December 18, 2019, 11:20:10 AM GMT, voonna santosh <santu=
_voonna@yahoo.com> wrote: =20
=20
 FYI:Does something like tx_waveforms[1] output a signal at the expected fr=
equency?=C2=A0- Yes, both tx_wavefrom and benchmark_rate works fine. I took=
 benchamark rate and extended it to get tx_freq configured. This is not wor=
king.

With respect to the 10MHz, this is the frequency of signals used to discipl=
ine the internal timebase to an external source. I wouldn't expect artifact=
s from this signal to be present at the TX port under normal circumstances.=
 Are you using an external reference? What about the GPSDO?=20
=C2=A0 - Since my base line is benchmark_rate, the default frequency is 10M=
Hz which always works fine. But when I change the frequency, thats when I s=
ee the issue. I couldn't trace where it is getting set, but it does. Can yo=
u please let me know where in the code, it sets the frequency to 10MHz ?=20

BR,Santosh





   On Tuesday, December 17, 2019, 11:45:29 PM GMT, Sam Reiter <sam.reiter@e=
ttus.com> wrote: =20
=20
 Does something like tx_waveforms[1] output a signal at the expected freque=
ncy?
What are you using to measure the frequency output?
With respect to the 10MHz, this is the frequency of signals used to discipl=
ine the internal timebase to an external source. I wouldn't expect artifact=
s from this signal to be present at the TX port under normal circumstances.=
 Are you using an external reference? What about the GPSDO?=C2=A0
[1]=C2=A0https://github.com/EttusResearch/uhd/blob/master/host/examples/tx_=
waveforms.cpp

Sam Reiter=C2=A0Ettus Research

On Mon, Dec 16, 2019 at 9:01 AM voonna santosh via USRP-users <usrp-users@l=
ists.ettus.com> wrote:

Hi There,=C2=A0=C2=A0 I have bench marked X300 against my development PC. T=
hen I took benchmark_rate code and modified a bit. Everything works fine ex=
cept setting the center freq.=C2=A0=C2=A0 When ever I set the center freque=
ncy, there is no error returned by the call. But when I transmit the data, =
it doesn't appear in scope. Whenever I remove the code to set the center fr=
equency, things work fine and I cann see a spike at 10Mhz which is default =
frequency I guess. Any clues?
std::cout << boost::format("Setting TX Freq: %f MHz...") % (freq/1e6) << st=
d::endl;
uhd::tune_request_t tune_request(freq);
//usrp->set_tx_freq(tune_request, 0); - This line also doesn't work
usrp->set_tx_freq(freq, 0);
std::cout << boost::format("Actual TX Freq: %f MHz...") % (usrp->get_tx_fre=
q(0)/1e6) << std::endl << std::endl;

Thanks and Regards
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

   =20
------=_Part_807373_251252201.1576670484799
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpa527d131yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">One more thing to add:</div>=
<div dir=3D"ltr" data-setdir=3D"false">If I run benchmark_rate with out any=
 modifications, then the output in scope if perfect. <br></div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>I have added the following code snippet to configure the tx_freq and there=
 is nothing observed in scope.</div><div dir=3D"ltr" data-setdir=3D"false">=
<br></div><div dir=3D"ltr" data-setdir=3D"false"><div>if (vm.count("tx_freq=
")){<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(size_t ch =3D 0; ch &lt; tx_chan=
nel_nums.size(); ch++) {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; std:=
:cout &lt;&lt; boost::format("Setting TX Freq: %f MHz...") % (tx_freq/1e6) =
&lt;&lt; std::endl;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::tune=
_request_t tune_request(tx_freq);<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; if(vm.count("int-n")) tune_request.args =3D uhd::device_addr_t("mode_n=
=3Dinteger");<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp-&gt;set_tx=
_freq(tune_request, tx_channel_nums[ch]);<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; std::cout &lt;&lt; boost::format("Actual TX Freq: %f MHz...") =
% (usrp-&gt;get_tx_freq(tx_channel_nums[ch])/1e6) &lt;&lt; std::endl &lt;&l=
t; std::endl;<br>&nbsp;&nbsp;&nbsp; }<br>}</div><div><br></div><div dir=3D"=
ltr" data-setdir=3D"false">Command used for testing: <span>./benchmark_rate=
 --args=3D"addr=3D192.168.40.2" --channels=3D"0" --tx_rate 50e6 --tx_freq 2=
0e6 --duration 50</span><br></div><div><br></div><div><br></div><div dir=3D=
"ltr" data-setdir=3D"false">NOTE: I am using Agilent E4402B to analyze the =
spectrum (9KHz to 3 GHz)<br></div><div dir=3D"ltr" data-setdir=3D"false"><b=
r></div><div dir=3D"ltr" data-setdir=3D"false">Thanks,</div><div dir=3D"ltr=
" data-setdir=3D"false">Santosh<br></div></div><div dir=3D"ltr" data-setdir=
=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div =
dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D=
"false"><br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_7071217456" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, December 18, 2019, 11:20:10 AM GMT, voonn=
a santosh &lt;santu_voonna@yahoo.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv9449169570"><div><div class=3D"yiv944916=
9570yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial=
, sans-serif;font-size:16px;"><div>FYI:</div><div dir=3D"ltr"><span>Does so=
mething like tx_waveforms[1] output a signal at the expected frequency?</sp=
an></div><div dir=3D"ltr"><span>&nbsp;- Yes, both tx_wavefrom and benchmark=
_rate works fine. I took benchamark rate and extended it to get tx_freq con=
figured. This is not working.</span></div><div dir=3D"ltr"><span><br clear=
=3D"none"></span></div><div dir=3D"ltr"><span><br clear=3D"none"></span></d=
iv><div dir=3D"ltr"><div><div>With respect to the 10MHz, this is the=20
frequency of signals used to discipline the internal timebase to an=20
external source. I wouldn't expect artifacts from this signal to be=20
present at the TX port under normal circumstances. Are you using an=20
external reference? What about the GPSDO? <br clear=3D"none"></div><div dir=
=3D"ltr">&nbsp; - Since my base line is benchmark_rate, the default frequen=
cy is 10MHz which always works fine. But when I change the frequency, thats=
 when I see the issue. I couldn't trace where it is getting set, but it doe=
s. Can you please let me know where in the code, it sets the frequency to 1=
0MHz ? <br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><=
div dir=3D"ltr">BR,</div><div dir=3D"ltr">Santosh<br clear=3D"none"></div><=
/div><div><br clear=3D"none"></div><span></span></div><div dir=3D"ltr"><br =
clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"=
ltr"><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><di=
v class=3D"yiv9449169570yqt8012614695" id=3D"yiv9449169570yqt97274"><div cl=
ass=3D"yiv9449169570yahoo_quoted" id=3D"yiv9449169570yahoo_quoted_671581864=
2">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, December 17, 2019, 11:45:29 PM GMT, Sam Rei=
ter &lt;sam.reiter@ettus.com&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"yiv9449169570"><div><div dir=3D"ltr">Does s=
omething like tx_waveforms[1] output a signal at the expected frequency?<di=
v><br clear=3D"none"></div><div>What are you using to measure the frequency=
 output?</div><div><br clear=3D"none"></div><div>With respect to the 10MHz,=
 this is the frequency of signals used to discipline the internal timebase =
to an external source. I wouldn't expect artifacts from this signal to be p=
resent at the TX port under normal circumstances. Are you using an external=
 reference? What about the GPSDO?&nbsp;</div><div><br clear=3D"none"></div>=
<div>[1]&nbsp;<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"=
https://github.com/EttusResearch/uhd/blob/master/host/examples/tx_waveforms=
.cpp">https://github.com/EttusResearch/uhd/blob/master/host/examples/tx_wav=
eforms.cpp</a><br clear=3D"none"><div><br clear=3D"none"></div><div><div><d=
iv class=3D"yiv9449169570gmail_signature" dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr">Sam Reiter&nbsp;</div><div dir=3D"ltr">Ettus Research</div></d=
iv></div></div><br clear=3D"none"></div></div></div><br clear=3D"none"><div=
 class=3D"yiv9449169570gmail_quote"><div class=3D"yiv9449169570yqt789904153=
6" id=3D"yiv9449169570yqt39504"><div class=3D"yiv9449169570gmail_attr" dir=
=3D"ltr">On Mon, Dec 16, 2019 at 9:01 AM voonna santosh via USRP-users &lt;=
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br clear=3D"none"></div><blockquote class=
=3D"yiv9449169570gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex;"><div><div style=3D""><div di=
r=3D"ltr">Hi There,</div><div dir=3D"ltr">&nbsp;&nbsp; I have bench marked =
X300 against my development PC. Then I took benchmark_rate code and modifie=
d a bit. Everything works fine except setting the center freq.</div><div di=
r=3D"ltr">&nbsp;&nbsp; When ever I set the center frequency, there is no er=
ror returned by the call. But when I transmit the data, it doesn't appear i=
n scope. Whenever I remove the code to set the center frequency, things wor=
k fine and I cann see a spike at 10Mhz which is default frequency I guess. =
Any clues?</div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">=
<div dir=3D"ltr">std::cout &lt;&lt; boost::format("Setting TX Freq: %f MHz.=
..") % (freq/1e6) &lt;&lt; std::endl;<br clear=3D"none">uhd::tune_request_t=
 tune_request(freq);<br clear=3D"none"><div>//usrp-&gt;set_tx_freq(tune_req=
uest, 0); - This line also doesn't work<br clear=3D"none"></div>usrp-&gt;se=
t_tx_freq(freq, 0);<br clear=3D"none">std::cout &lt;&lt; boost::format("Act=
ual TX Freq: %f MHz...") % (usrp-&gt;get_tx_freq(0)/1e6) &lt;&lt; std::endl=
 &lt;&lt; std::endl;<br clear=3D"none"><br clear=3D"none"></div><div dir=3D=
"ltr">Thanks and Regards<br clear=3D"none"></div></div></div></div>________=
_______________________________________<br clear=3D"none">
USRP-users mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank" href=3D"mailto:USRP-users@lists.ettus.com">USRP-use=
rs@lists.ettus.com</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div></div>
            </div>
        </div></div></div></div></div></div>
            </div>
        </div></body></html>
------=_Part_807373_251252201.1576670484799--


--===============6823998190355882216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6823998190355882216==--

