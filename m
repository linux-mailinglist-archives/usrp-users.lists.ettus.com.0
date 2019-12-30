Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C19E12D4B5
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2019 22:44:57 +0100 (CET)
Received: from [::1] (port=34742 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1im2qM-0004oe-9h; Mon, 30 Dec 2019 16:44:54 -0500
Received: from sonic311-24.consmr.mail.ne1.yahoo.com ([66.163.188.205]:36781)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1im2qI-0004ih-DC
 for usrp-users@lists.ettus.com; Mon, 30 Dec 2019 16:44:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1577742249; bh=hPkdgd19Q5yYSGQ1o309e5bx49VAbDYPXw2rQp46weg=;
 h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=Vx0iMB/+5FBmg9FGqvzQBz29T+teBgCprOw2FyXzwhVaRuHXloEmd4iuQZ1C3EhqN8AtWDSfBtOXEv3caGbFADo8ULbd23AtVPT0BODjxVVd7ohvO0LSaP31b5n0FnCIFntlPzmCjZ/c9VVWhMuHKZU9trHInB8c8ykXweRH4lsYAKNvraGi+FkyBQKLGhblfZlcqhnv6T3r9hrOtC8A5Rp6ykOXQJXAunwHB/ACIp34XnzxmiGGJl6yI3IwjAPcmoKWG1ZsqJ/ZhoFgchuw/Ew1qT0FfrUSPOMtEyyx0OENAa3Stz0PrU5uMnSSA+1brQ9PIjrt38xF7MIXJYiLwA==
X-YMail-OSG: hMy2b5IVM1mnD38JiUwQtWhhTa9ptVXNsOqT7MXN95gRPGQ4rB5JktLGuxDu5ql
 WuvxpRN3yisykWjRdIzrEK9V3vbomjg_jGcBT56PTDX8.ptJOUIFEU5IHxe0ZT9eIemCylQTLrtO
 4oyOWn8C7JYsvkSkvZgMMeWEDl9YPbeK3d9EWJf7CVPxKu5BKcHiaKoqbziMDpM9d7TZgfnalhQl
 tsCIxgEFGlZk9.gjHt4VZHI4aOpnDXQG9LkSw8mxqU7GTh92Hwr4VAbJlEwJrh5R6sJ0DdqDRrjj
 YX2_gyEXFj2WKV_x6HrlfLiAO0T8ptQ.zdwyKaFaokF_M2wAXdZXGyDoCq.29PZw89vZ13zp37ZG
 Ti5YRYiVW4ovJxS9wf4LqZMBP65thhqJuA6KZMZnB66SjnA3od.cQELtA2.fZ9xp0pXcpIFC9_UT
 h0RY5LXIWPx0BnJiiKwfbhwgxVt1iA5W2t0DLvEaN1oBXhFFnnFQpLz8BKbirK3XitNykB7Pkxub
 edWzxEsLTJ_BDLaQutl90lRhcBNZmjoFA5cnItaWS7Zdeqx7JN0QtZwaQWRa3ZRBpqYNmvuTremT
 hxmTORFVra8aeQu.FVupm782gWrjKeNLxIUR8ppgJMOyOzKCd0kealM1uA02z4kZq81j_oD5aPtf
 7DqqE11z0jFajlrprTeklWPZMI6AsXzpEHlUc.Yxgk6VpIAPu8NEIDEIRHOa2Fhc8WWm2eGFY2bl
 R4lRVqAPRh4RPOqLCNkveSsHdZjvKJARFC09N0FnfaG1Jzo168XqaSh48OefToU2rSeWZPdpHIgF
 D1ijAPrDZ_25iuFXBD1XG6DnNB7ppYQakNlz4M9x65aARKfwNRtnfziPLFhsnp.xczdmxLRXYl3d
 7sr8P4A88utb7HJaR6jX5.8ZpPz0KE2lnh3uNB58kffhzo.MrMcj1NBAWz_a2K6jMRZ..8V8wSpF
 HncpENpY8_fYvFboBqpzwHf1a0F.gVWUjVy0ovOIm7cR2h38x6IkIO.2Jml1WoDxx4O6AHEBe.9U
 gF_ljZ3R1hoaYNBiSzZa3CkRBrk1T5zMxwXqPmPyrc8rVh9jJHb612mSItStMU9DpT1b7MHnOLpR
 9LLCISql8O4bKeOFKgA0hNEb.5wml6xpl9Y3KDo4MlV8R9xoHA0li2Q_n0QbFY8_yPBM8Jpyit.l
 91o0b_tA91l9ThjDDcsuZbDTW5KCxbDUt5bOWc8e8mI0vjYcEC917i1fR9WDoRp_WkaGFRg9qYox
 rMAEMMncK5ryOJomS_8t18hg3ZGZJrrt3FAUHHuc6SwClu9digH73oy1Gu3lGN5pfM_TLouDgqbC
 hC_Ebi08oOG99yjTVloZZ_Q4TTPHHkYZVKy69Jfz2QlX4ofXWATbXD2RviOX40OhvuScRyUNJbvK
 Naw--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.ne1.yahoo.com with HTTP; Mon, 30 Dec 2019 21:44:09 +0000
Date: Mon, 30 Dec 2019 21:44:06 +0000 (UTC)
To: "rkossler@nd.edu" <rkossler@nd.edu>
Message-ID: <499433417.5064469.1577742246595@mail.yahoo.com>
In-Reply-To: <CAB__hTQOaq9Gvb=1GzivNEif+P1cRCdAEnuL=rYW8cTs5KMuFA@mail.gmail.com>
References: <1273926885.14075492.1576508432546.ref@mail.yahoo.com>
 <1273926885.14075492.1576508432546@mail.yahoo.com>
 <CANf970ZfAdBmr0QgutUbQoJseNF6F24W78XvhbKWzbcheDRRVQ@mail.gmail.com>
 <1913144600.796210.1576668010291@mail.yahoo.com>
 <775991377.807374.1576670484801@mail.yahoo.com>
 <CAB__hTQOaq9Gvb=1GzivNEif+P1cRCdAEnuL=rYW8cTs5KMuFA@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14873 YahooMailAndroidMobile YMobile/1.0
 (com.yahoo.mobile.client.android.mail/6.2.4; Android/7.0; NRD90M; zerolte;
 samsung; SM-G925F; 5.06; 2560x1440; )
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
Reply-To: "santu_voonna@yahoo.com" <santu_voonna@yahoo.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6779307931169159038=="
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

--===============6779307931169159038==
Content-Type: multipart/alternative; 
	boundary="----=_Part_5064468_779655170.1577742246593"
Content-Length: 15274

------=_Part_5064468_779655170.1577742246593
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yes .. all are zeros

Sent from Yahoo Mail on Android=20
=20
  On Mon, 30 Dec 2019 at 15:45, Rob Kossler<rkossler@nd.edu> wrote:   Perha=
ps the digital values are all zero for benchmark rate?
On Wed, Dec 18, 2019 at 7:02 AM voonna santosh via USRP-users <usrp-users@l=
ists.ettus.com> wrote:

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

    _______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

 =20

------=_Part_5064468_779655170.1577742246593
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yes .. all are zeros<br id=3D"yMail_cursorElementTracker_1577742217147"><br=
><div id=3D"ymail_android_signature"><a id=3D"ymail_android_signature_link"=
 href=3D"https://go.onelink.me/107872968?pid=3DInProduct&amp;c=3DGlobal_Int=
ernal_YGrowth_AndroidEmailSig__AndroidUsers&amp;af_wl=3Dym&amp;af_sub1=3DIn=
ternal&amp;af_sub2=3DGlobal_YGrowth&amp;af_sub3=3DEmailSignature">Sent from=
 Yahoo Mail on Android</a></div> <br> <blockquote style=3D"margin: 0 0 20px=
 0;"> <div style=3D"font-family:Roboto, sans-serif; color:#6D00F6;"> <div>O=
n Mon, 30 Dec 2019 at 15:45, Rob Kossler</div><div>&lt;rkossler@nd.edu&gt; =
wrote:</div> </div> <div style=3D"padding: 10px 0 0 20px; margin: 10px 0 0 =
0; border-left: 1px solid #6D00F6;"> <div id=3D"yiv0617080586"><div><div di=
r=3D"ltr">Perhaps the digital values are all zero for benchmark rate?</div>=
<br clear=3D"none"><div class=3D"yiv0617080586gmail_quote"><div class=3D"yi=
v0617080586yqt1393673793 yQTDBase" id=3D"yiv0617080586yqt47218"><div class=
=3D"yiv0617080586gmail_attr" dir=3D"ltr">On Wed, Dec 18, 2019 at 7:02 AM vo=
onna santosh via USRP-users &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" href=3D"mailto:usr=
p-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br clear=
=3D"none"></div><blockquote class=3D"yiv0617080586gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex;"><div><div style=3D""><div></div>
        <div dir=3D"ltr">One more thing to add:</div><div dir=3D"ltr">If I =
run benchmark_rate with out any modifications, then the output in scope if =
perfect. <br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div=
><div dir=3D"ltr">I have added the following code snippet to configure the =
tx_freq and there is nothing observed in scope.</div><div dir=3D"ltr"><br c=
lear=3D"none"></div><div dir=3D"ltr"><div>if (vm.count("tx_freq")){<br clea=
r=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(size_t ch =3D 0; ch &lt; tx_c=
hannel_nums.size(); ch++) {<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; std::cout &lt;&lt; boost::format("Setting TX Freq: %f MHz..."=
) % (tx_freq/1e6) &lt;&lt; std::endl;<br clear=3D"none">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; uhd::tune_request_t tune_request(tx_freq);<br clear=
=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(vm.count("int-n")) =
tune_request.args =3D uhd::device_addr_t("mode_n=3Dinteger");<br clear=3D"n=
one">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp-&gt;set_tx_freq(tune_r=
equest, tx_channel_nums[ch]);<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; std::cout &lt;&lt; boost::format("Actual TX Freq: %f MHz...=
") % (usrp-&gt;get_tx_freq(tx_channel_nums[ch])/1e6) &lt;&lt; std::endl &lt=
;&lt; std::endl;<br clear=3D"none">&nbsp;&nbsp;&nbsp; }<br clear=3D"none">}=
</div><div><br clear=3D"none"></div><div dir=3D"ltr">Command used for testi=
ng: <span>./benchmark_rate --args=3D"addr=3D192.168.40.2" --channels=3D"0" =
--tx_rate 50e6 --tx_freq 20e6 --duration 50</span><br clear=3D"none"></div>=
<div><br clear=3D"none"></div><div><br clear=3D"none"></div><div dir=3D"ltr=
">NOTE: I am using Agilent E4402B to analyze the spectrum (9KHz to 3 GHz)<b=
r clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=
=3D"ltr">Thanks,</div><div dir=3D"ltr">Santosh<br clear=3D"none"></div></di=
v><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"n=
one"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><br c=
lear=3D"none"></div><div><br clear=3D"none"></div>
       =20
        </div><div id=3D"yiv0617080586gmail-m_3547915342933947221yahoo_quot=
ed_7071217456">
            <div style=3D"">
               =20
                <div>
                    On Wednesday, December 18, 2019, 11:20:10 AM GMT, voonn=
a santosh &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:santu_vo=
onna@yahoo.com" target=3D"_blank" href=3D"mailto:santu_voonna@yahoo.com">sa=
ntu_voonna@yahoo.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"yiv0617080586gmail-m_3547915342933947221yiv=
9449169570"><div><div style=3D""><div>FYI:</div><div dir=3D"ltr"><span>Does=
 something like tx_waveforms[1] output a signal at the expected frequency?<=
/span></div><div dir=3D"ltr"><span>&nbsp;- Yes, both tx_wavefrom and benchm=
ark_rate works fine. I took benchamark rate and extended it to get tx_freq =
configured. This is not working.</span></div><div dir=3D"ltr"><span><br cle=
ar=3D"none"></span></div><div dir=3D"ltr"><span><br clear=3D"none"></span><=
/div><div dir=3D"ltr"><div><div>With respect to the 10MHz, this is the=20
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
v id=3D"yiv0617080586gmail-m_3547915342933947221yiv9449169570yqt97274"><div=
 id=3D"yiv0617080586gmail-m_3547915342933947221yiv9449169570yahoo_quoted_67=
15818642">
            <div style=3D"">
               =20
                <div>
                    On Tuesday, December 17, 2019, 11:45:29 PM GMT, Sam Rei=
ter &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:sam.reiter@ett=
us.com" target=3D"_blank" href=3D"mailto:sam.reiter@ettus.com">sam.reiter@e=
ttus.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"yiv0617080586gmail-m_3547915342933947221yiv=
9449169570"><div><div dir=3D"ltr">Does something like tx_waveforms[1] outpu=
t a signal at the expected frequency?<div><br clear=3D"none"></div><div>Wha=
t are you using to measure the frequency output?</div><div><br clear=3D"non=
e"></div><div>With respect to the 10MHz, this is the frequency of signals u=
sed to discipline the internal timebase to an external source. I wouldn't e=
xpect artifacts from this signal to be present at the TX port under normal =
circumstances. Are you using an external reference? What about the GPSDO?&n=
bsp;</div><div><br clear=3D"none"></div><div>[1]&nbsp;<a rel=3D"nofollow" s=
hape=3D"rect" target=3D"_blank" href=3D"https://github.com/EttusResearch/uh=
d/blob/master/host/examples/tx_waveforms.cpp">https://github.com/EttusResea=
rch/uhd/blob/master/host/examples/tx_waveforms.cpp</a><br clear=3D"none"><d=
iv><br clear=3D"none"></div><div><div><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr">Sam Reiter&nbsp;</div><div dir=3D"ltr">Ettus Research</div></=
div></div></div><br clear=3D"none"></div></div></div><br clear=3D"none"><di=
v><div id=3D"yiv0617080586gmail-m_3547915342933947221yiv9449169570yqt39504"=
><div dir=3D"ltr">On Mon, Dec 16, 2019 at 9:01 AM voonna santosh via USRP-u=
sers &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br clear=3D"none"></div><blockqu=
ote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex;"><div><div><div dir=3D"ltr">Hi There,</div><div dir=3D"=
ltr">&nbsp;&nbsp; I have bench marked X300 against my development PC. Then =
I took benchmark_rate code and modified a bit. Everything works fine except=
 setting the center freq.</div><div dir=3D"ltr">&nbsp;&nbsp; When ever I se=
t the center frequency, there is no error returned by the call. But when I =
transmit the data, it doesn't appear in scope. Whenever I remove the code t=
o set the center frequency, things work fine and I cann see a spike at 10Mh=
z which is default frequency I guess. Any clues?</div><div dir=3D"ltr"><br =
clear=3D"none"></div><div dir=3D"ltr"><div dir=3D"ltr">std::cout &lt;&lt; b=
oost::format("Setting TX Freq: %f MHz...") % (freq/1e6) &lt;&lt; std::endl;=
<br clear=3D"none">uhd::tune_request_t tune_request(freq);<br clear=3D"none=
"><div>//usrp-&gt;set_tx_freq(tune_request, 0); - This line also doesn't wo=
rk<br clear=3D"none"></div>usrp-&gt;set_tx_freq(freq, 0);<br clear=3D"none"=
>std::cout &lt;&lt; boost::format("Actual TX Freq: %f MHz...") % (usrp-&gt;=
get_tx_freq(0)/1e6) &lt;&lt; std::endl &lt;&lt; std::endl;<br clear=3D"none=
"><br clear=3D"none"></div><div dir=3D"ltr">Thanks and Regards<br clear=3D"=
none"></div></div></div></div>_____________________________________________=
__<br clear=3D"none">
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
        </div></div>_______________________________________________<br clea=
r=3D"none">
USRP-users mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank" href=3D"mailto:USRP-users@lists.ettus.com">USRP-use=
rs@lists.ettus.com</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div> </div> </blockquote>
------=_Part_5064468_779655170.1577742246593--


--===============6779307931169159038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6779307931169159038==--

