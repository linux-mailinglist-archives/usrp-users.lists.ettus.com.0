Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C42CD8639
	for <lists+usrp-users@lfdr.de>; Wed, 16 Oct 2019 05:12:13 +0200 (CEST)
Received: from [::1] (port=58028 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKZjM-0003Ad-Ib; Tue, 15 Oct 2019 23:12:08 -0400
Received: from sonic313-27.consmr.mail.sg3.yahoo.com ([106.10.240.86]:37623)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <arun.verma@eiwave.com>)
 id 1iKZjJ-00035b-2C
 for usrp-users@lists.ettus.com; Tue, 15 Oct 2019 23:12:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1571195480; bh=puv7ouEoSIzfR0lQuK910mnUT+qujWTAo0FvY8oVO3c=;
 h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=ED47bUUA8UnqdSc7NEMTloMa8E0MmWBTfP/SaRi5tkZvPEupePIwS5A/zg6WbtBhUWuBiq9DwrkhdV3c/Juhge5TCPq4QY7coqFDM3WoJdGXYMQ5eMkLscSksjshAHXvaZpSkFE/RRQCMdg6JCYzRVx9AOYqSVBog3er12yFikbzqoH6Kzz77gjKZFeESFaLje/QQxNtrIegotckWI/2pCgVGV8mfk+bDRCZswrz2d9LH2kJ2xaX8d7vdf7SRtqQzXPB0kvYCB9CkooIVlI9BM9d20Ys3sCyNFX65vrPilFlI33Fpez8WGkmFDmHzOvOiUy+RcKbM80kSoSmyga3fg==
X-YMail-OSG: l9UU0u8VM1kmtnaVmlQ3m.d92_SfMQ8OTTX6G5G4eIFPhe5GtM5cB.JfFLVnDbt
 0BYssazto6Uylzwuu1Ke57Emd_pNi7_uDCg7q2wNY5Q0oFfRoBkjlw_ERbj7FGuvch.0pd4HyOeD
 SYQVfbeaekIBlcuMdjPmwiZr2brqctjOzVVHzV5AzDkpofbrZiFmjn9eQfT3QOx34D5TW99lZvvO
 np4Uml2db1DgOTHWrvmNgwIIRKdOh3CdsEi5QhcZywN0hCof66LVYtjeYN4SGrBOcBtFqDtfutpi
 b1o5BAgUiO3wgbfdvrg32rMCMxl5AgEngO5LWtQelp9fu6T1OBYOq2ZgSFownXpIyDWi82QyAZvB
 ix5PxeMqx.GwThJ5F35rN7MrGpuvGq_CqBmYyNXFvDFieNo0BjEJAv_tA4qAHNaywm2vkn1t6rc3
 3WkzJySMnxAg2ZpnOngUdfmbVJOmolVPls.x5w9t3BtPKnuP.NhJ7UBZjpDzA7UyVo9QiegtXpkm
 6VYYtTZ9P7l23QVan3IHeQO5eBX3d.8OVLlGHWx5NXyl2Ur68AtfCDSnJJX0S1FIXJPo3QIPtmuQ
 6lXZX_k4QmSZ1oI9_iL_KLjwVJy5l5iHsuGrSvxxlafj__YpTvdV9JtKgyP8xCS0FitBkQXJeg.H
 CsNlkp3PEzMSJOHPJXq3z739IBBHoOvK6ntNjQijPAOK.AKltfCT0Wwzs29_x6jjrQ6vLNC0UQOE
 8eJFYdCCcUKc5BSZx2T.swWLQq3pUNiWSPgUHBm5EejozwOaR86HWPfZvMBTF0ktO9Qd43b1CrBy
 5FtN.tTvuIGrm0Tnwgg60nS8_zzQXUoT0mdXMKBdIkoMwtLDP7zREQqxxSQGAez7T.JJkODO4Z6j
 GSfY09jLbyr8fR7nmJPwTj.WOC3hmwnMhHefY0iBEgh1YrgC4dvsg23fWhHLt9bUTjyaUm67Q5zU
 XrbKEaLI.dRhzIVgKipNCd3vMKjr8h1FWL6ziivFrKrVierm0g2S3w9ZcLCIdG7BGdl3Kod0PSUR
 q6BKg2.bkHBtZpc0.oVRnXMV1uJ7RlQdr4FZ361UYiPMRu2_aVpSth6Fw4g4LMy51k8GkeEn4whS
 HmjE3UyGMhYxZA.I99icWCbaWgMSth5br4Gggxg3fCD89o0Xgm_8uSyUKusoCJuoyYfHaGqsRCbh
 iXBPjeC0CFx2yzFAbdbbLB.xP6.X_DRlDixDE3eWDRVWl5fd6YiFmDqgU_ojbLBjXejSLYZgTE8I
 cFUGAzotxjp8eViWRz_tHxc6tEN.aVIDFmBqQpQ2CiitUNCN28svxL6WbU7rhkfw-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.sg3.yahoo.com with HTTP; Wed, 16 Oct 2019 03:11:20 +0000
Date: Wed, 16 Oct 2019 03:11:14 +0000 (UTC)
To: Sam Reiter <sam.reiter@ettus.com>
Message-ID: <1152458035.2395130.1571195474088@mail.yahoo.com>
In-Reply-To: <CANf970Zg6W5x2GPb2XdeYDfFy3uGHNV3FWRo_1dnHGcYH3XRVA@mail.gmail.com>
References: <1956590264.2783788.1569054790193.ref@mail.yahoo.com>
 <1956590264.2783788.1569054790193@mail.yahoo.com>
 <CANf970Zg6W5x2GPb2XdeYDfFy3uGHNV3FWRo_1dnHGcYH3XRVA@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14498 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90
 Safari/537.36
Subject: Re: [USRP-users] X310 Temperature Range
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8229508328548507974=="
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

--===============8229508328548507974==
Content-Type: multipart/alternative; 
	boundary="----=_Part_2395129_1274684685.1571195474086"
Content-Length: 9089

------=_Part_2395129_1274684685.1571195474086
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

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
------=_Part_2395129_1274684685.1571195474086
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpa08a0161yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div><div dir=3D"ltr" data-setdir=3D"false">Hi Sam</div><div dir=3D"ltr"=
 data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Tha=
nks for the information. My only doubt is about the FPGA.&nbsp; FPGA is ind=
ustrial grade or Commercial grade ? other parts I have verified and all the=
 parts are with Temp Range of -40 to +85.&nbsp;</div><div dir=3D"ltr" data-=
setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">As in cas=
e of B205mini it is clearly mentioned the grade of the FPGA.</div><div><br>=
</div><div class=3D"ydpa08a0161signature"><div style=3D"font-family:Helveti=
ca, Arial, sans-serif;font-size:16px;"><div><div>Regards,</div><div>Arun Ve=
rma</div><div><br></div></div><br></div></div></div>
        <div><br></div><div><br></div>
       =20
        </div><div id=3D"ydpe7e9fa00yahoo_quoted_1475565224" class=3D"ydpe7=
e9fa00yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, October 16, 2019, 01:13:56 AM GMT+5:30, S=
am Reiter &lt;sam.reiter@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydpe7e9fa00yiv5355110877"><div><div dir=3D"=
ltr"><div>Hey Arun,</div><div><br clear=3D"none"></div><div>The temperature=
 range for the X310 and the TwinRX is noted as 23 +/- 3 C. This is meant to=
 convey that the device is intended for indoor lab use and has not been tho=
roughly tested in extreme environments like you've mentioned. You're also c=
orrect that you'll see device performance change over that temperature rang=
e and I think -20C will be dipping below the rating of some of the componen=
ts. Some key components can be found here:</div><div><br clear=3D"none"></d=
iv><div><a shape=3D"rect" href=3D"https://kb.ettus.com/X300/X310#Key_Compon=
ent_Datasheets" rel=3D"nofollow" target=3D"_blank">https://kb.ettus.com/X30=
0/X310#Key_Component_Datasheets</a></div><div><br clear=3D"none"></div><div=
>Depending on what you're hoping to do, we see folks develop custom enclosu=
res for these types of radios with and without thermal regulation. At the e=
nd of the day if you're subjecting this radio to those kinds of extremes, i=
t's up to you to put it through its paces and make sure it'll meet your nee=
ds. I'll also note that we don't formally endorse any X310 enclosures, but =
one of the few IP67 OTS solutions I've found for the X310 is sold by Pixus:=
 <br clear=3D"none"></div><div><br clear=3D"none"></div><div><a shape=3D"re=
ct" href=3D"http://www.pixustechnologies.com/products/enclosure-system-solu=
tions/specialty-small-form-factor-rugged-x310-other-2/specialty-small-form-=
factor-rugged-x310-other/" rel=3D"nofollow" target=3D"_blank">http://www.pi=
xustechnologies.com/products/enclosure-system-solutions/specialty-small-for=
m-factor-rugged-x310-other-2/specialty-small-form-factor-rugged-x310-other/=
</a></div><div><br clear=3D"none"></div><div>Not sure if this does anything=
 to extend temperature range, but it could be a starting point in developin=
g your own ruggedized solution to deploy. Also if anyone else has recommend=
ations or experience with X310 enclosure solutions, I'd be curious to hear =
what you've made or worked with in the past.<br clear=3D"none"></div><div><=
br clear=3D"none"></div><div>Best,</div><div><br clear=3D"none"></div><div>=
<div><div class=3D"ydpe7e9fa00yiv5355110877gmail_signature" dir=3D"ltr"><di=
v dir=3D"ltr"><div><div dir=3D"ltr">Sam<br clear=3D"none"></div></div></div=
></div></div></div></div><br clear=3D"none"><div class=3D"ydpe7e9fa00yiv535=
5110877gmail_quote"><div class=3D"ydpe7e9fa00yiv5355110877yqt5968124326" id=
=3D"ydpe7e9fa00yiv5355110877yqt09404"><div class=3D"ydpe7e9fa00yiv535511087=
7gmail_attr" dir=3D"ltr">On Sat, Sep 21, 2019 at 3:33 AM Arun kumar Verma v=
ia USRP-users &lt;<a shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.c=
om" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br clear=3D"none"></div><blockquote class=3D"ydpe7e9fa00yiv5355110877=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex;"><div><div style=3D"font-family:Helvetica Neue=
, Helvetica, Arial, sans-serif;font-size:16px;"><div dir=3D"ltr"><div><div =
dir=3D"ltr" style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-ser=
if;">Hi Users<br clear=3D"none"></div><div dir=3D"ltr" style=3D"font-family=
:Helvetica Neue, Helvetica, Arial, sans-serif;">We would like to know wheth=
er X310 with TwinRx boards can be used for temperature range -20 to +55 deg=
ree. Is temperature range is limited by the components used in the boards o=
r the performance is not guaranteed over this range.<br clear=3D"none"></di=
v><div dir=3D"ltr" style=3D"font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;">Are the components used are industrial grade or commercial grad=
e?<br clear=3D"none"></div><div dir=3D"ltr" style=3D"font-family:Helvetica =
Neue, Helvetica, Arial, sans-serif;"><br clear=3D"none"></div><div dir=3D"l=
tr" style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">Reg=
ards,</div><div dir=3D"ltr" style=3D"font-family:Helvetica Neue, Helvetica,=
 Arial, sans-serif;">Arun Verma</div></div><br clear=3D"none"></div><div><b=
r clear=3D"none"></div><div><div style=3D"font-family:Helvetica, Arial, san=
s-serif;font-size:16px;"><br clear=3D"none"></div></div></div></div>_______=
________________________________________<br clear=3D"none">
USRP-users mailing list<br clear=3D"none">
<a shape=3D"rect" href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"nofollo=
w" target=3D"_blank">USRP-users@lists.ettus.com</a><br clear=3D"none">
<a shape=3D"rect" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-user=
s_lists.ettus.com" rel=3D"nofollow" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div></div>
            </div>
        </div></body></html>
------=_Part_2395129_1274684685.1571195474086--


--===============8229508328548507974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8229508328548507974==--

