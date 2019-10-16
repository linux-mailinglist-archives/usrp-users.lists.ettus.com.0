Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23524D9A2C
	for <lists+usrp-users@lfdr.de>; Wed, 16 Oct 2019 21:35:57 +0200 (CEST)
Received: from [::1] (port=58424 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKp5O-0006M5-Et; Wed, 16 Oct 2019 15:35:54 -0400
Received: from sonic301-27.consmr.mail.sg3.yahoo.com ([106.10.242.90]:44989)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <arun.verma@eiwave.com>)
 id 1iKp5K-00068E-L9
 for usrp-users@lists.ettus.com; Wed, 16 Oct 2019 15:35:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1571254507; bh=aerW00HhXEDZZ8WYYGaVhF+U/fSR4OArbRpKfkB9LS8=;
 h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
 b=VT+dtENdltyQ5NYQbf4DbWRPxfYCchgpyGScT/i7wZufpDdG6Nwfi7pxl8t/Dr1tjUVoFaKg+ro1nCQNzkPgrfpJg4itOVQBg8BOBzOoXDHfVqucmIp4MeNDaGTRrD/TA+7sXhdLkIH5c7snlY/P33GS2N07ZbHP8jXesnJ5owbsl9cRKZhz4sz+3Yk/OWc4BqTAPsC/npOPdvMSb6wWMc0hjH+dclR+1mN6VPyaEa7G1f7ef5WoGA8WoUrHfVmU+x0YSyNrlLEuEiUpFCoMhnWV0CE1+YPrE3T1b5BEO4uAJhlLjrSb8vSEzfFIYQhFphjb4juTd16ZbsVb+jWPRQ==
X-YMail-OSG: J8mjYVcVM1kdjlrfk5qjaB1piH37To7jSULCNNqzLLHwnrDf74L9gd5TZpQxvSz
 fsfZFi8Ogwe7WI5DTZNL5LQtpk2FbCbobVp9Ah8NNm5CC9XLIw.heN10oeYbuu2h.UDylqGloHMw
 o2Hrdc5eQs8XydePgTiR7s5YdZsjIgs3Isr09tUyMsGc18175B02mUQVYJbbbAfKcB3YjuPKoxen
 ZQE87iV7i2lxZ3sTm4tCQeddDTtfZ7Lwle_fpA04uO9MW18xhMaQjyxTilkpcf5HK6fPSdXyHPd_
 DH70PdQcQExeuTmfR.t3VKWBh7P4UxUz5K5QA_yJQIYcHuq1l82m3WtcUsGJ.vz4rW.LiSLz2HCH
 Yrv58akdBePceAUah1.KVA5dS8AhK8KgW.lhIN93I5Ewrnc4tpxaTIFf9dHCozc2P7_yZWQE4mu7
 jwLJ0f8OstjTNK_1pgYfsbTFYUh8anBYzOOsW817vlFRaTiHVB.cetKWMcp_QqFr5mCFQM5rk23s
 wFatryHQdyxsSKXHKqQ0dRXCpbU9wNGIuPTLCRWk2_cJCw4D6kSFnbk7qo9NGUQb1OQdsJe9mjFd
 NwY6BwNyAGKLrd6PJx3ZVu8RV.mtFFVsei4U.aAh4v.p0o3mEctXANDjpKkTgoH_D.kMyWkaI1HW
 v30Fb7lzYKXX.NZTGtDrFqHVALI_uUzJ23h83pUJmKYpielh0XMuou.RLq4jhrIqPt1sTJ.OgU2y
 TCq7.BLcY9aB33CYtdQQirXAkCsSPhn0ifPT6FGzqX8iY9UH8wwYO603BYp5g17nttgA2Hak.7Fk
 QLEcix_MAttTVhr.qpgRoaOga6x4BmPJWey4nr7gJjJiGY0vhyQOQU21bsdC8fbcx35_v6TKJQrM
 tu5a03IgWMMWDN2xsXqtzHuIF.smTE_rbN.ISSTLSsZx73klcRFhBZ.1Q8U3Yzd0FMA_0FqJEJp6
 lLaoIjYA080rNphVQWiI9WWS0vQBELSH839.41l3Boq03GOZYdYGjVW.uWofwtEAmFBw9sS1qRKi
 g.MtX8iVz46ItIu9jFijm6nTy643MY74vWoRDn0Z6dYxBrDY9CKDwzbcVC1S9tQU7UMSbSum087l
 yho1rU9ZHrFS6qqCr3KcUBbQLxYom.vrf1WQqpW6DCXHhxbVEryjwQPZLsNlq8uQaegd5MsUYJFx
 C7CL6abndwHaLmdktPskZjEU2KIHsB1HmaL6r22WVIPCKDSy8PCfZn4fINafJ6U4xa7VY0qbkOXL
 nsqQRZk4GJXZ7ShmwIMzeNxidDvoSz5gzDem.Jyt4VNb.70abWggSTIchknBOb20fc.T8tE4PbVv
 ZQxejHxH_AhG9h16xjsTkQIm5UTq3x.U-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.sg3.yahoo.com with HTTP; Wed, 16 Oct 2019 19:35:07 +0000
Date: Wed, 16 Oct 2019 19:35:01 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1919960921.2923231.1571254501791@mail.yahoo.com>
In-Reply-To: <CANf970bSqxR19HC-33jLx6N5qgYaU7ROqeYzV+7OPviH5qHq=w@mail.gmail.com>
References: <1956590264.2783788.1569054790193.ref@mail.yahoo.com>
 <1956590264.2783788.1569054790193@mail.yahoo.com>
 <CANf970Zg6W5x2GPb2XdeYDfFy3uGHNV3FWRo_1dnHGcYH3XRVA@mail.gmail.com>
 <1152458035.2395130.1571195474088@mail.yahoo.com>
 <CANf970bSqxR19HC-33jLx6N5qgYaU7ROqeYzV+7OPviH5qHq=w@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14498 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90
 Safari/537.36
Subject: [USRP-users] X310 and 8bit complex sampling
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Arun kumar Verma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arun kumar Verma <arun.verma@eiwave.com>
Content-Type: multipart/mixed; boundary="===============3663936078653545050=="
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

--===============3663936078653545050==
Content-Type: multipart/alternative; 
	boundary="----=_Part_2923230_321640558.1571254501788"
Content-Length: 14444

------=_Part_2923230_321640558.1571254501788
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Users
I am trying to achieve 50MHz BW (25MHz Each Channel)=C2=A0 with X310 and Tw=
inRX using 1G Ethernet. I went through some of the forums regrading this an=
d found that X310 does not support 8-bit IQ samples as mentioned in below l=
ink.=C2=A0
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-February/0=
46123.html

Is still 8-bit IQ samples are not supported in the latest UHD ?
We are looking for a solution for 50MHz (25MHz Channel each) with laptop pr=
ocessing (Ubuntu).=C2=A0 While going through some comments from different u=
sers I found that using=C2=A0T3NL-T3DIY-AKTU ( https://www.akitio.com/expan=
sion/node-lite)=C2=A0 and=C2=A0=C2=A0Intel X710-DA2 more than 50MHz BW can =
be achieved. Is there any other solution available for this kind of bandwid=
th as we are looking for some compact solution.

Regards,Arun Verma

=20

    On Wednesday, 16 October, 2019, 09:23:33 pm IST, Sam Reiter <sam.reiter=
@ettus.com> wrote: =20
=20
 Arun,
Sorry for the confusion. The X310 uses a commercial grade=C2=A0XC7K410T wit=
h=C2=A0a temperature range of 0-85C.
Sam
On Tue, Oct 15, 2019 at 10:11 PM Arun kumar Verma <arun.verma@eiwave.com> w=
rote:

Hi Sam
Thanks for the information. My only doubt is about the FPGA.=C2=A0 FPGA is =
industrial grade or Commercial grade ? other parts I have verified and all =
the parts are with Temp Range of -40 to +85.=C2=A0
As in case of B205mini it is clearly mentioned the grade of the FPGA.
Regards,Arun Verma

=20

    On Wednesday, October 16, 2019, 01:13:56 AM GMT+5:30, Sam Reiter <sam.r=
eiter@ettus.com> wrote: =20
=20
 Hey Arun,
The temperature range for the X310 and the TwinRX is noted as 23 +/- 3 C. T=
his is meant to convey that the device is intended for indoor lab use and h=
as not been thoroughly tested in extreme environments like you've mentioned=
. You're also correct that you'll see device performance change over that t=
emperature range and I think -20C will be dipping below the rating of some =
of the components. Some key components can be found here:
https://kb.ettus.com/X300/X310#Key_Component_Datasheets
Depending on what you're hoping to do, we see folks develop custom enclosur=
es for these types of radios with and without thermal regulation. At the en=
d of the day if you're subjecting this radio to those kinds of extremes, it=
's up to you to put it through its paces and make sure it'll meet your need=
s. I'll also note that we don't formally endorse any X310 enclosures, but o=
ne of the few IP67 OTS solutions I've found for the X310 is sold by Pixus:=
=20

http://www.pixustechnologies.com/products/enclosure-system-solutions/specia=
lty-small-form-factor-rugged-x310-other-2/specialty-small-form-factor-rugge=
d-x310-other/
Not sure if this does anything to extend temperature range, but it could be=
 a starting point in developing your own ruggedized solution to deploy. Als=
o if anyone else has recommendations or experience with X310 enclosure solu=
tions, I'd be curious to hear what you've made or worked with in the past.

Best,
Sam

On Sat, Sep 21, 2019 at 3:33 AM Arun kumar Verma via USRP-users <usrp-users=
@lists.ettus.com> wrote:

Hi Users
We would like to know whether X310 with TwinRx boards can be used for tempe=
rature range -20 to +55 degree. Is temperature range is limited by the comp=
onents used in the boards or the performance is not guaranteed over this ra=
nge.
Are the components used are industrial grade or commercial grade?

Regards,Arun Verma


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

 =20
 =20
------=_Part_2923230_321640558.1571254501788
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp9e654d82yahoo-style-wrap" style=
=3D""><div style=3D""><div dir=3D"ltr" data-setdir=3D"false" style=3D"font-=
family: Helvetica Neue, Helvetica, Arial, sans-serif;"><font size=3D"3">Hi =
Users</font></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"font-fami=
ly: Helvetica Neue, Helvetica, Arial, sans-serif;"><font size=3D"3"><br></f=
ont></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"font-family: Helv=
etica Neue, Helvetica, Arial, sans-serif;"><font size=3D"3">I am trying to =
achieve 50MHz BW (25MHz Each Channel)&nbsp; with X310 and TwinRX using 1G E=
thernet. I went through some of the forums regrading this and found that X3=
10 does not support 8-bit IQ samples as mentioned in below link.&nbsp;</fon=
t></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"font-family: Helvet=
ica Neue, Helvetica, Arial, sans-serif;"><font size=3D"3"><br></font></div>=
<div dir=3D"ltr" data-setdir=3D"false" style=3D"font-family: Helvetica Neue=
, Helvetica, Arial, sans-serif;"><font size=3D"3"><span><a href=3D"http://l=
ists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-February/046123.ht=
ml" style=3D"color: rgb(51, 143, 233); text-decoration-line: underline; fon=
t-family: Helvetica Neue, Helvetica, Arial, sans-serif;" rel=3D"nofollow" t=
arget=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.co=
m/2016-February/046123.html</a></span><br></font></div><div dir=3D"ltr" dat=
a-setdir=3D"false" style=3D"font-family: Helvetica Neue, Helvetica, Arial, =
sans-serif;"><font size=3D"3"><br></font></div><div dir=3D"ltr" data-setdir=
=3D"false" style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-ser=
if;"><font size=3D"3">Is still 8-bit IQ samples are not supported in the la=
test UHD ?</font></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"font=
-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><font size=3D"3"><b=
r></font></div><div dir=3D"ltr" data-setdir=3D"false" style=3D""><font size=
=3D"3" style=3D"">We are looking for a solution for 50MHz (25MHz Channel ea=
ch) with laptop processing (Ubuntu).&nbsp; While going through some comment=
s from different users I found that using&nbsp;<span style=3D"font-family: =
Arial, Helvetica, sans-serif; color: rgb(97, 97, 97);">T3NL-T3DIY-AKTU ( <s=
pan><a href=3D"https://www.akitio.com/expansion/node-lite" rel=3D"nofollow"=
 target=3D"_blank" class=3D"">https://www.akitio.com/expansion/node-lite</a=
>)&nbsp; and&nbsp;&nbsp;</span></span><font face=3D"Arial, Helvetica, sans-=
serif"><span style=3D"white-space: pre-wrap;">Intel X710-DA2 more than 50MH=
z BW can be achieved. Is there any other solution available for this kind o=
f bandwidth as we are looking for some compact solution.</span></font><span=
 style=3D"font-family: Arial, Helvetica, sans-serif; color: rgb(97, 97, 97)=
;"><div style=3D""><br></div><div style=3D""><br></div></span></font></div>=
<div class=3D"ydp9e654d82signature" style=3D"font-family: Helvetica Neue, H=
elvetica, Arial, sans-serif; font-size: 16px;"><div style=3D"font-family:He=
lvetica, Arial, sans-serif;font-size:16px;"><div><div>Regards,</div><div>Ar=
un Verma</div><div><br></div></div><br></div></div></div>
        <div style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-s=
erif; font-size: 16px;"><br></div><div style=3D"font-family: Helvetica Neue=
, Helvetica, Arial, sans-serif; font-size: 16px;"><br></div>
       =20
        </div><div id=3D"ydp20839308yahoo_quoted_1483466053" class=3D"ydp20=
839308yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, 16 October, 2019, 09:23:33 pm IST, Sam Re=
iter &lt;sam.reiter@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp20839308yiv1887972462"><div><div dir=3D"=
ltr">Arun,<div><br clear=3D"none"></div><div>Sorry for the confusion. The X=
310 uses a commercial grade&nbsp;XC7K410T with&nbsp;a temperature range of =
0-85C.</div><div><br clear=3D"all"><div><div dir=3D"ltr"><div dir=3D"ltr"><=
div><div dir=3D"ltr">Sam</div></div></div></div></div></div></div><br clear=
=3D"none"><div class=3D"ydp20839308yiv1887972462yqt0756264066" id=3D"ydp208=
39308yiv1887972462yqt67802"><div class=3D"ydp20839308yiv1887972462gmail_quo=
te"><div class=3D"ydp20839308yiv1887972462gmail_attr" dir=3D"ltr">On Tue, O=
ct 15, 2019 at 10:11 PM Arun kumar Verma &lt;<a shape=3D"rect" href=3D"mail=
to:arun.verma@eiwave.com" rel=3D"nofollow" target=3D"_blank">arun.verma@eiw=
ave.com</a>&gt; wrote:<br clear=3D"none"></div><blockquote class=3D"ydp2083=
9308yiv1887972462gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex;"><div><div><div><div dir=3D"l=
tr">Hi Sam</div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">=
Thanks for the information. My only doubt is about the FPGA.&nbsp; FPGA is =
industrial grade or Commercial grade ? other parts I have verified and all =
the parts are with Temp Range of -40 to +85.&nbsp;</div><div dir=3D"ltr"><b=
r clear=3D"none"></div><div dir=3D"ltr">As in case of B205mini it is clearl=
y mentioned the grade of the FPGA.</div><div><br clear=3D"none"></div><div>=
<div style=3D"font-family:Helvetica, Arial, sans-serif;font-size:16px;"><di=
v><div>Regards,</div><div>Arun Verma</div><div><br clear=3D"none"></div></d=
iv><br clear=3D"none"></div></div></div>
        <div><br clear=3D"none"></div><div><br clear=3D"none"></div>
       =20
        </div><div id=3D"ydp20839308yiv1887972462gmail-m_341760722020869977=
3ydpe7e9fa00yahoo_quoted_1475565224">
            <div>
               =20
                <div>
                    On Wednesday, October 16, 2019, 01:13:56 AM GMT+5:30, S=
am Reiter &lt;<a shape=3D"rect" href=3D"mailto:sam.reiter@ettus.com" rel=3D=
"nofollow" target=3D"_blank">sam.reiter@ettus.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"ydp20839308yiv1887972462gmail-m_34176072202=
08699773ydpe7e9fa00yiv5355110877"><div><div dir=3D"ltr"><div>Hey Arun,</div=
><div><br clear=3D"none"></div><div>The temperature range for the X310 and =
the TwinRX is noted as 23 +/- 3 C. This is meant to convey that the device =
is intended for indoor lab use and has not been thoroughly tested in extrem=
e environments like you've mentioned. You're also correct that you'll see d=
evice performance change over that temperature range and I think -20C will =
be dipping below the rating of some of the components. Some key components =
can be found here:</div><div><br clear=3D"none"></div><div><a shape=3D"rect=
" href=3D"https://kb.ettus.com/X300/X310#Key_Component_Datasheets" rel=3D"n=
ofollow" target=3D"_blank">https://kb.ettus.com/X300/X310#Key_Component_Dat=
asheets</a></div><div><br clear=3D"none"></div><div>Depending on what you'r=
e hoping to do, we see folks develop custom enclosures for these types of r=
adios with and without thermal regulation. At the end of the day if you're =
subjecting this radio to those kinds of extremes, it's up to you to put it =
through its paces and make sure it'll meet your needs. I'll also note that =
we don't formally endorse any X310 enclosures, but one of the few IP67 OTS =
solutions I've found for the X310 is sold by Pixus: <br clear=3D"none"></di=
v><div><br clear=3D"none"></div><div><a shape=3D"rect" href=3D"http://www.p=
ixustechnologies.com/products/enclosure-system-solutions/specialty-small-fo=
rm-factor-rugged-x310-other-2/specialty-small-form-factor-rugged-x310-other=
/" rel=3D"nofollow" target=3D"_blank">http://www.pixustechnologies.com/prod=
ucts/enclosure-system-solutions/specialty-small-form-factor-rugged-x310-oth=
er-2/specialty-small-form-factor-rugged-x310-other/</a></div><div><br clear=
=3D"none"></div><div>Not sure if this does anything to extend temperature r=
ange, but it could be a starting point in developing your own ruggedized so=
lution to deploy. Also if anyone else has recommendations or experience wit=
h X310 enclosure solutions, I'd be curious to hear what you've made or work=
ed with in the past.<br clear=3D"none"></div><div><br clear=3D"none"></div>=
<div>Best,</div><div><br clear=3D"none"></div><div><div><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr">Sam<br clear=3D"none"></div></div></di=
v></div></div></div></div><br clear=3D"none"><div><div id=3D"ydp20839308yiv=
1887972462gmail-m_3417607220208699773ydpe7e9fa00yiv5355110877yqt09404"><div=
 dir=3D"ltr">On Sat, Sep 21, 2019 at 3:33 AM Arun kumar Verma via USRP-user=
s &lt;<a shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"n=
ofollow" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br cle=
ar=3D"none"></div><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex;"><div><div><div dir=3D"ltr"><=
div><div dir=3D"ltr">Hi Users<br clear=3D"none"></div><div dir=3D"ltr">We w=
ould like to know whether X310 with TwinRx boards can be used for temperatu=
re range -20 to +55 degree. Is temperature range is limited by the componen=
ts used in the boards or the performance is not guaranteed over this range.=
<br clear=3D"none"></div><div dir=3D"ltr">Are the components used are indus=
trial grade or commercial grade?<br clear=3D"none"></div><div dir=3D"ltr"><=
br clear=3D"none"></div><div dir=3D"ltr">Regards,</div><div dir=3D"ltr">Aru=
n Verma</div></div><br clear=3D"none"></div><div><br clear=3D"none"></div><=
div><div style=3D"font-family:Helvetica, Arial, sans-serif;font-size:16px;"=
><br clear=3D"none"></div></div></div></div>_______________________________=
________________<br clear=3D"none">
USRP-users mailing list<br clear=3D"none">
<a shape=3D"rect" href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"nofollo=
w" target=3D"_blank">USRP-users@lists.ettus.com</a><br clear=3D"none">
<a shape=3D"rect" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-user=
s_lists.ettus.com" rel=3D"nofollow" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div></div>
            </div>
        </div></div></blockquote></div></div></div></div></div>
            </div>
        </div></body></html>
------=_Part_2923230_321640558.1571254501788--


--===============3663936078653545050==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3663936078653545050==--

