Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E741245A7
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 12:21:00 +0100 (CET)
Received: from [::1] (port=38542 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihXNw-0002XG-PT; Wed, 18 Dec 2019 06:20:56 -0500
Received: from sonic304-21.consmr.mail.ne1.yahoo.com ([66.163.191.147]:46578)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1ihXNt-0002T3-PD
 for usrp-users@lists.ettus.com; Wed, 18 Dec 2019 06:20:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1576668012; bh=59b3wjoow+eap0/Vyl2zbR12neOH/4HktraqtvBB7fM=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=GHqxPdrNVHXwrUoPxHz5OuB8LnDBiuiITH49sGfHboO3TXkpMZ/Y80EHfmLO+w746Dm1/R3pSREE9qxdH+CSxrfXmNMY7LNMnMYmYL/mTEOcosa71xN+VWrnYboQhQ+ld0uX+FexYbtZF6NwDPC1Km0NW8Zfg+fOMUoVh3upFzPinbRjxRzJjMh6JtVVsnsXshF+p8oSb/u8QNnPlxQT7riWrxWo0+Q8zYOLVHH/X0O113YIQpFskUrpZhC9gNB+54zwTuOtvdHREuglDoQ+8H3a/6dGr22Jufc6bCf2fRlfLJmUs/4evdW+80puHz6Gs65TWCqGZNTgfTGlP22JmQ==
X-YMail-OSG: wqdT16AVM1k9Un2Uv7b80yLfbCdIrxbC8LA.Nv2Ny42WEwgyn4sGvdUXw1YTsly
 blA3Jfmj0b28kq0OIg2xYjBg_IL5etBy4OesXl7lKR08K2OFzxx8WlfKI3F6qBp7ymyXLwDIIenC
 lyxmNOI0nnYgDbKqzIN1xTW8pz_CO7n_ZdgJXqDSmn4pBfPRBV3cfAjCHh1Hq6kibBBJoksVSFVf
 cdZnxxSJzPnYeJ0jVc9cjcw97vExAnUJZ9YJGizDDy2u9ocFxwiUCT7Wr2v_WnP8i5PU4352uNbL
 iBHtMrN03Or00Xk1jsfOmt1Tj_eVyjxZSn7kcWLWvROU0L9eK6EbBgCtt1UucvcxeF0cWKdRsnjV
 jajFxGASxx120HQuKEIX5zaPY8jf95yIfrrQjFMNme6U6oGZQFNz7NOGaEEHC9GFjjHJgAT5n7qt
 OIyBtzSZ3m0xhM.xep1b2MN4KRipqsOtbRRamgMdFyFKPc30LDjUgZXH3BxiKY6mxYVN5MUho2bO
 exARCBs_ujGgDRed2SEdPnNBbgLGqf6HzUMFsp8ODOxQsA4oi_ROm0cUwmz3229VmMctk9hIXsMZ
 1NB_9bHGgnCiCJVaRsnbv8heaDgjRrJi9jJVVHkNFQyKLNmRiZxzp6_bLcv7HvU8LBAPPvk5hvxZ
 qHuTEBy7ZzNUqXKTHbPL1QswuW6jTcLwssJVUisv8ksHtP7uauavmrl_5U.gvIZ2CzYA1BcS8JkQ
 .ZQsR4RitXQCV41.h0w4Tr0WlvXkI1th5X05dqadpD.pQ0.fwrAOsgz8_uW3Dquh0kRc9Wn2pvWc
 E1NZCX8QVjibcigxi5_VCVrks9CDm7jqqO3ybEQxqG7yGCejz7UacRods40KxyzLnWaAb5ZHNvZn
 SltAm7K6QgGT_uTPNy2Vjd.tWX_XlR06uwMyYL0_4ba2vhn1czGtR_Xdi12oH3TzajbPov0j8zIN
 mDt.JYPMYLWzMdcVHLqP6ome3c2WFP.TFbmhoOFWGnhyDozpmhPhRXmE1qC0x4LbV_IW2.3gLQrc
 FP3jNb3OKOAL4l8tZTP6cDqTgv.QfwG8GKoG8ULExJPpfYzRu7Td84TvK4d_meoxfLdBbEdlnxF4
 u9bIEA75ejbqNgGcKivLsA_KVOgDFp7_ps.DWLfh._1Hc12VDMgNstUCWGBzxLPPEo8ja4v2kXmQ
 1Qq1Fw_2rtE4YwIOhoV8mNGymXenHG2Tl.tAATNMMcEMw.dc1r.G2wxyM6yvYa_hBIrfv2hgbm5F
 Vdks.sMRmyK.XmSZEMSicjzH_BDOEcEIvvsIqYERiFGuqllVXxkKox9DQhikvD2fQwSZJ66CDS01
 RdRDGZzIMkRnj3lGZMaOLQ6uhsQbS1JPfEw--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.ne1.yahoo.com with HTTP; Wed, 18 Dec 2019 11:20:12 +0000
Date: Wed, 18 Dec 2019 11:20:10 +0000 (UTC)
To: Sam Reiter <sam.reiter@ettus.com>
Message-ID: <1913144600.796210.1576668010291@mail.yahoo.com>
In-Reply-To: <CANf970ZfAdBmr0QgutUbQoJseNF6F24W78XvhbKWzbcheDRRVQ@mail.gmail.com>
References: <1273926885.14075492.1576508432546.ref@mail.yahoo.com>
 <1273926885.14075492.1576508432546@mail.yahoo.com>
 <CANf970ZfAdBmr0QgutUbQoJseNF6F24W78XvhbKWzbcheDRRVQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6825897135260411111=="
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

--===============6825897135260411111==
Content-Type: multipart/alternative; 
	boundary="----=_Part_796209_492826656.1576668010289"
Content-Length: 8733

------=_Part_796209_492826656.1576668010289
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

FYI:Does something like tx_waveforms[1] output a signal at the expected fre=
quency?=C2=A0- Yes, both tx_wavefrom and benchmark_rate works fine. I took =
benchamark rate and extended it to get tx_freq configured. This is not work=
ing.

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
------=_Part_796209_492826656.1576668010289
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div>FYI:<=
/div><div dir=3D"ltr" data-setdir=3D"false"><span>Does something like tx_wa=
veforms[1] output a signal at the expected frequency?</span></div><div dir=
=3D"ltr" data-setdir=3D"false"><span>&nbsp;- Yes, both tx_wavefrom and benc=
hmark_rate works fine. I took benchamark rate and extended it to get tx_fre=
q configured. This is not working.</span></div><div dir=3D"ltr" data-setdir=
=3D"false"><span><br></span></div><div dir=3D"ltr" data-setdir=3D"false"><s=
pan><br></span></div><div dir=3D"ltr" data-setdir=3D"false"><div><div>With =
respect to the 10MHz, this is the=20
frequency of signals used to discipline the internal timebase to an=20
external source. I wouldn't expect artifacts from this signal to be=20
present at the TX port under normal circumstances. Are you using an=20
external reference? What about the GPSDO? <br></div><div dir=3D"ltr" data-s=
etdir=3D"false">&nbsp; - Since my base line is benchmark_rate, the default =
frequency is 10MHz which always works fine. But when I change the frequency=
, thats when I see the issue. I couldn't trace where it is getting set, but=
 it does. Can you please let me know where in the code, it sets the frequen=
cy to 10MHz ? <br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><d=
iv dir=3D"ltr" data-setdir=3D"false">BR,</div><div dir=3D"ltr" data-setdir=
=3D"false">Santosh<br></div></div><div><br></div><span></span></div><div di=
r=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"f=
alse"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div id=3D"yahoo_quoted_6715818642=
" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, December 17, 2019, 11:45:29 PM GMT, Sam Rei=
ter &lt;sam.reiter@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv2871651502"><div><div dir=3D"ltr">Does s=
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
iv class=3D"yiv2871651502gmail_signature" dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr">Sam Reiter&nbsp;</div><div dir=3D"ltr">Ettus Research</div></d=
iv></div></div><br clear=3D"none"></div></div></div><br clear=3D"none"><div=
 class=3D"yiv2871651502gmail_quote"><div class=3D"yiv2871651502yqt789904153=
6" id=3D"yiv2871651502yqt39504"><div class=3D"yiv2871651502gmail_attr" dir=
=3D"ltr">On Mon, Dec 16, 2019 at 9:01 AM voonna santosh via USRP-users &lt;=
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br clear=3D"none"></div><blockquote class=
=3D"yiv2871651502gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
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
        </div></div></body></html>
------=_Part_796209_492826656.1576668010289--


--===============6825897135260411111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6825897135260411111==--

