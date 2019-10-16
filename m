Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D09A3D960F
	for <lists+usrp-users@lfdr.de>; Wed, 16 Oct 2019 17:54:21 +0200 (CEST)
Received: from [::1] (port=32994 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKlcs-00075S-MS; Wed, 16 Oct 2019 11:54:14 -0400
Received: from mail-lj1-f177.google.com ([209.85.208.177]:34345)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iKlcp-0006gu-5L
 for usrp-users@lists.ettus.com; Wed, 16 Oct 2019 11:54:11 -0400
Received: by mail-lj1-f177.google.com with SMTP id j19so24592960lja.1
 for <usrp-users@lists.ettus.com>; Wed, 16 Oct 2019 08:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YFn4GrVsFPeQEJxmaWf0+jLopek5tc/uI9lQSak8H3Q=;
 b=yEVcOTLTit3kIjVn0PGmRF+4u4GLTH1BnWPI6Mjv2hc5ko2bmhD/xVvupg5bPq11Ug
 CJOeXOH9Txb/Xov9PRGMpCEuuAPbqiHLNv/BRsDzbPU0Cpvn8dXzrEpDWRZp0svY8SLa
 TngJRNIrRYQvP98mzi8ZRGglRzFaTcqRrI9W7JHr4wabQa7vdtKTD/hQKvze5BcWTjDN
 ZhbzPulCHMm+Mk8hApp+AZBSqVhmLQVn/r4EMkHv23U/oDdQqMBaPZn4HjO8TnCfTwji
 GCThn5Kcu4vJ7V1t6P+JUOILH07UhzethWzGPaxknnhPuoM6TiT5/atzkbL13lHo6ZcW
 EsfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YFn4GrVsFPeQEJxmaWf0+jLopek5tc/uI9lQSak8H3Q=;
 b=uhZU1k4J/AY66uWbaWxmHtsci294MsvBaHnPNtQXsgjvgO1qapC0vZF3/C5SyTTXkP
 ZeDGyzxKdXN0fzAuIJ6UC+tUGqAAb6hVD8imuWkBN1mHmrCtlGy7minbZSTtIPMwqLKn
 6PsNaSHH8Ys8fFPMgIqeMt4EbEy8vwytxnFJerozhpvGYuzYi9G3e9qvcb2zUjyTRCQF
 iCUTNxtEMqoI5ZVA40sr2craxV9kxByUq7EubcWFwdZgdUcoS5V7xGZZrZjg57uFFBHE
 sayLVrToXYshpiMMvFFC4Z9uVJS1xsrPLW0cAYwByLDnMGqll+04Y7zEXdLJYD/N8mD2
 tYMw==
X-Gm-Message-State: APjAAAVTChPm1mqAnc3RHPwP2qRajJrqfAIJBIOXM/NV5gG4+7KlBpsa
 YV+9wuHqAMIaojUP0fhD8ibYAxueHxw/Y9j6Oc0sqI5djSn7jg==
X-Google-Smtp-Source: APXvYqzYQ8urnOarwXN1OH2JCg+f+WlafPXY0rjDyF2A7mbDQN/xlHjf2b/rE05kCwRsTz9/GOp7TkzyXDDijmEIzy8=
X-Received: by 2002:a2e:6a04:: with SMTP id f4mr26274242ljc.97.1571241209636; 
 Wed, 16 Oct 2019 08:53:29 -0700 (PDT)
MIME-Version: 1.0
References: <1956590264.2783788.1569054790193.ref@mail.yahoo.com>
 <1956590264.2783788.1569054790193@mail.yahoo.com>
 <CANf970Zg6W5x2GPb2XdeYDfFy3uGHNV3FWRo_1dnHGcYH3XRVA@mail.gmail.com>
 <1152458035.2395130.1571195474088@mail.yahoo.com>
In-Reply-To: <1152458035.2395130.1571195474088@mail.yahoo.com>
Date: Wed, 16 Oct 2019 10:53:18 -0500
Message-ID: <CANf970bSqxR19HC-33jLx6N5qgYaU7ROqeYzV+7OPviH5qHq=w@mail.gmail.com>
To: Arun kumar Verma <arun.verma@eiwave.com>
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6878580951916550621=="
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

--===============6878580951916550621==
Content-Type: multipart/alternative; boundary="000000000000283b8d0595091aaf"

--000000000000283b8d0595091aaf
Content-Type: text/plain; charset="UTF-8"

Arun,

Sorry for the confusion. The X310 uses a commercial grade XC7K410T with a
temperature range of 0-85C.

Sam

On Tue, Oct 15, 2019 at 10:11 PM Arun kumar Verma <arun.verma@eiwave.com>
wrote:

> Hi Sam
>
> Thanks for the information. My only doubt is about the FPGA.  FPGA is
> industrial grade or Commercial grade ? other parts I have verified and all
> the parts are with Temp Range of -40 to +85.
>
> As in case of B205mini it is clearly mentioned the grade of the FPGA.
>
> Regards,
> Arun Verma
>
>
>
>
> On Wednesday, October 16, 2019, 01:13:56 AM GMT+5:30, Sam Reiter <
> sam.reiter@ettus.com> wrote:
>
>
> Hey Arun,
>
> The temperature range for the X310 and the TwinRX is noted as 23 +/- 3 C.
> This is meant to convey that the device is intended for indoor lab use and
> has not been thoroughly tested in extreme environments like you've
> mentioned. You're also correct that you'll see device performance change
> over that temperature range and I think -20C will be dipping below the
> rating of some of the components. Some key components can be found here:
>
> https://kb.ettus.com/X300/X310#Key_Component_Datasheets
>
> Depending on what you're hoping to do, we see folks develop custom
> enclosures for these types of radios with and without thermal regulation.
> At the end of the day if you're subjecting this radio to those kinds of
> extremes, it's up to you to put it through its paces and make sure it'll
> meet your needs. I'll also note that we don't formally endorse any X310
> enclosures, but one of the few IP67 OTS solutions I've found for the X310
> is sold by Pixus:
>
>
> http://www.pixustechnologies.com/products/enclosure-system-solutions/specialty-small-form-factor-rugged-x310-other-2/specialty-small-form-factor-rugged-x310-other/
>
> Not sure if this does anything to extend temperature range, but it could
> be a starting point in developing your own ruggedized solution to deploy.
> Also if anyone else has recommendations or experience with X310 enclosure
> solutions, I'd be curious to hear what you've made or worked with in the
> past.
>
> Best,
>
> Sam
>
> On Sat, Sep 21, 2019 at 3:33 AM Arun kumar Verma via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hi Users
> We would like to know whether X310 with TwinRx boards can be used for
> temperature range -20 to +55 degree. Is temperature range is limited by the
> components used in the boards or the performance is not guaranteed over
> this range.
> Are the components used are industrial grade or commercial grade?
>
> Regards,
> Arun Verma
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--000000000000283b8d0595091aaf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Arun,<div><br></div><div>Sorry for the confusion. The X310=
 uses a commercial grade=C2=A0XC7K410T with=C2=A0a temperature range of 0-8=
5C.</div><div><br clear=3D"all"><div><div dir=3D"ltr"><div dir=3D"ltr"><div=
><div dir=3D"ltr">Sam</div></div></div></div></div></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 15, 20=
19 at 10:11 PM Arun kumar Verma &lt;<a href=3D"mailto:arun.verma@eiwave.com=
">arun.verma@eiwave.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div><div style=3D"font-family:&quot;Helvetica Neue&=
quot;,Helvetica,Arial,sans-serif;font-size:16px"><div><div dir=3D"ltr">Hi S=
am</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Thanks for the informat=
ion. My only doubt is about the FPGA.=C2=A0 FPGA is industrial grade or Com=
mercial grade ? other parts I have verified and all the parts are with Temp=
 Range of -40 to +85.=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr=
">As in case of B205mini it is clearly mentioned the grade of the FPGA.</di=
v><div><br></div><div><div style=3D"font-family:Helvetica,Arial,sans-serif;=
font-size:16px"><div><div>Regards,</div><div>Arun Verma</div><div><br></div=
></div><br></div></div></div>
        <div><br></div><div><br></div>
       =20
        </div><div id=3D"gmail-m_3417607220208699773ydpe7e9fa00yahoo_quoted=
_1475565224">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Wednesday, October 16, 2019, 01:13:56 AM GMT+5:30, S=
am Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">sam=
.reiter@ettus.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"gmail-m_3417607220208699773ydpe7e9fa00yiv53=
55110877"><div><div dir=3D"ltr"><div>Hey Arun,</div><div><br clear=3D"none"=
></div><div>The temperature range for the X310 and the TwinRX is noted as 2=
3 +/- 3 C. This is meant to convey that the device is intended for indoor l=
ab use and has not been thoroughly tested in extreme environments like you&=
#39;ve mentioned. You&#39;re also correct that you&#39;ll see device perfor=
mance change over that temperature range and I think -20C will be dipping b=
elow the rating of some of the components. Some key components can be found=
 here:</div><div><br clear=3D"none"></div><div><a shape=3D"rect" href=3D"ht=
tps://kb.ettus.com/X300/X310#Key_Component_Datasheets" rel=3D"nofollow" tar=
get=3D"_blank">https://kb.ettus.com/X300/X310#Key_Component_Datasheets</a><=
/div><div><br clear=3D"none"></div><div>Depending on what you&#39;re hoping=
 to do, we see folks develop custom enclosures for these types of radios wi=
th and without thermal regulation. At the end of the day if you&#39;re subj=
ecting this radio to those kinds of extremes, it&#39;s up to you to put it =
through its paces and make sure it&#39;ll meet your needs. I&#39;ll also no=
te that we don&#39;t formally endorse any X310 enclosures, but one of the f=
ew IP67 OTS solutions I&#39;ve found for the X310 is sold by Pixus: <br cle=
ar=3D"none"></div><div><br clear=3D"none"></div><div><a shape=3D"rect" href=
=3D"http://www.pixustechnologies.com/products/enclosure-system-solutions/sp=
ecialty-small-form-factor-rugged-x310-other-2/specialty-small-form-factor-r=
ugged-x310-other/" rel=3D"nofollow" target=3D"_blank">http://www.pixustechn=
ologies.com/products/enclosure-system-solutions/specialty-small-form-factor=
-rugged-x310-other-2/specialty-small-form-factor-rugged-x310-other/</a></di=
v><div><br clear=3D"none"></div><div>Not sure if this does anything to exte=
nd temperature range, but it could be a starting point in developing your o=
wn ruggedized solution to deploy. Also if anyone else has recommendations o=
r experience with X310 enclosure solutions, I&#39;d be curious to hear what=
 you&#39;ve made or worked with in the past.<br clear=3D"none"></div><div><=
br clear=3D"none"></div><div>Best,</div><div><br clear=3D"none"></div><div>=
<div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam<br clear=
=3D"none"></div></div></div></div></div></div></div><br clear=3D"none"><div=
><div id=3D"gmail-m_3417607220208699773ydpe7e9fa00yiv5355110877yqt09404"><d=
iv dir=3D"ltr">On Sat, Sep 21, 2019 at 3:33 AM Arun kumar Verma via USRP-us=
ers &lt;<a shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D=
"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br c=
lear=3D"none"></div><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"font-fam=
ily:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:16px"><=
div dir=3D"ltr"><div><div dir=3D"ltr" style=3D"font-family:&quot;Helvetica =
Neue&quot;,Helvetica,Arial,sans-serif">Hi Users<br clear=3D"none"></div><di=
v dir=3D"ltr" style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Ari=
al,sans-serif">We would like to know whether X310 with TwinRx boards can be=
 used for temperature range -20 to +55 degree. Is temperature range is limi=
ted by the components used in the boards or the performance is not guarante=
ed over this range.<br clear=3D"none"></div><div dir=3D"ltr" style=3D"font-=
family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">Are the compo=
nents used are industrial grade or commercial grade?<br clear=3D"none"></di=
v><div dir=3D"ltr" style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetic=
a,Arial,sans-serif"><br clear=3D"none"></div><div dir=3D"ltr" style=3D"font=
-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">Regards,</di=
v><div dir=3D"ltr" style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetic=
a,Arial,sans-serif">Arun Verma</div></div><br clear=3D"none"></div><div><br=
 clear=3D"none"></div><div><div style=3D"font-family:Helvetica,Arial,sans-s=
erif;font-size:16px"><br clear=3D"none"></div></div></div></div>___________=
____________________________________<br clear=3D"none">
USRP-users mailing list<br clear=3D"none">
<a shape=3D"rect" href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"nofollo=
w" target=3D"_blank">USRP-users@lists.ettus.com</a><br clear=3D"none">
<a shape=3D"rect" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-user=
s_lists.ettus.com" rel=3D"nofollow" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div></div>
            </div>
        </div></div></blockquote></div>

--000000000000283b8d0595091aaf--


--===============6878580951916550621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6878580951916550621==--

