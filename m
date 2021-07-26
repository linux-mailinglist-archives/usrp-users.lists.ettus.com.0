Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C25A3D5D15
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jul 2021 17:35:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9823B3850EB
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jul 2021 11:35:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QFaHT8xn";
	dkim-atps=neutral
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id BB615384743
	for <usrp-users@lists.ettus.com>; Mon, 26 Jul 2021 11:34:47 -0400 (EDT)
Received: by mail-qv1-f43.google.com with SMTP id w6so5285197qvh.3
        for <usrp-users@lists.ettus.com>; Mon, 26 Jul 2021 08:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=XtI8ng0ESjqk/Ww9uQlZp3vv4PRQAArTV8iHG1B7pWQ=;
        b=QFaHT8xnF5vz00a+lxWy6ZsI+ScptebBiuv1B8WzEvusLZXnJ9g1/+lygqjvEw2dce
         AxmUljTb2xBxN/E7F/vypE1pGCWPbIkEyfjGaO+zQg5p4sJqWM26wAqSXR/4MDWyxfTn
         nBeVVEQLlH7jHeV3KKcQn43bhd5ytfL2bq9g+tWTd28ROgsUh1sLothuvoj5e5dr4125
         MM0ZNUUOJAVNjFBKpwgZqOXE41dYlOzhXiILttW0x0D/yH0Gb1AwG6X+hmfUAFbllRBs
         mexqs+W2RGfc5cicvSfVjAuE4OyjnMg9VjzguWZjbYgl3jEQmbOuEqNGeh6qOe+unaS3
         OtsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=XtI8ng0ESjqk/Ww9uQlZp3vv4PRQAArTV8iHG1B7pWQ=;
        b=EdPL/sujcoDAPtuDZ0YgAsqCsnJbshqsrJc7GxVHoKDAbVFjsRGMzdEU4xKGcYNq7B
         zQBoIq+Zt7ZQovAb7i5N23q8ttx3W1lZ1k55hK9WQrmoAhzliCSJjQqa9YMh/tUt/DUn
         hBBPdVVTSIw7grKvvFnN1vz8nDi38XZFtnx4Es/+TRVuhl/iDtMfG3Jt3Ve0e6j53gla
         pcFC/n4D2CCbgZhdJbKtPkY7ninD0W3WurS5uHv0HFWsIQiUW2No6JDGOD/frU6elv7c
         8V5pebBl5Y6QTXE2dR/tF+TgbyFm/o3+QYu+H09zQhnD+YDWwh4BJAhJb1ZadxRHc7Wb
         C8Zw==
X-Gm-Message-State: AOAM5305MzZ4lySp9PGVIA8RmKxftK37K5SiLkd28KD3nfoABRc1fyGb
	1WvP5GtVRaRRxqcgpOZ0JFvDY57BU70=
X-Google-Smtp-Source: ABdhPJyFMS5zaSs+xaYNdMTV80XPjAmLGCg31hzK9Qg/kgyXPeB4ZpunX23igECHuhpIKzD7TNB0gQ==
X-Received: by 2002:a0c:fe0b:: with SMTP id x11mr18571691qvr.56.1627313686976;
        Mon, 26 Jul 2021 08:34:46 -0700 (PDT)
Received: from smtpclient.apple (mobile-166-170-28-223.mycingular.net. [166.170.28.223])
        by smtp.gmail.com with ESMTPSA id 71sm140842qtc.97.2021.07.26.08.34.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 08:34:46 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 26 Jul 2021 11:34:42 -0400
Message-Id: <52694C62-7350-4E92-AB17-2E30ABFE3B5D@gmail.com>
References: <CAB__hTSGS6f=tcvqM8zAYjYCL47sywuFSt=ESkg0Sd93EGKefQ@mail.gmail.com>
In-Reply-To: <CAB__hTSGS6f=tcvqM8zAYjYCL47sywuFSt=ESkg0Sd93EGKefQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: S4K263QO54CQDF6RKEJ5QEAONZPT3RNB
X-Message-ID-Hash: S4K263QO54CQDF6RKEJ5QEAONZPT3RNB
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: thebouleoffools@gmail.com, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding RFNoC DDC in Gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S4K263QO54CQDF6RKEJ5QEAONZPT3RNB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7353319054326723460=="


--===============7353319054326723460==
Content-Type: multipart/alternative; boundary=Apple-Mail-DD316D8A-4147-4D17-BDA6-212D7DA1E5B0
Content-Transfer-Encoding: 7bit


--Apple-Mail-DD316D8A-4147-4D17-BDA6-212D7DA1E5B0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Phase time alignment according to the UHD Four-oh talk from GRCON2019.=20

<end transmission>

> On Jul 26, 2021, at 09:18, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> =EF=BB=BF
> My understanding is that 1 DDC with 2 ports and 2 DDC with 1 port is not m=
uch different. I got the impression from Ettus that it was really more of a c=
onceptual choice to match the 2 channel radios (2 chan per dboard) with a li=
ke-wise 2 channel DDC.=20
> Rob
>=20
>> On Thu, Jul 22, 2021 at 7:28 PM <thebouleoffools@gmail.com> wrote:
>> Well it looks like in ddc.yml that num_ports modifies input and output. I=
s that just allowing you then to use the same DDC core for two separate inpu=
t streams? How is that data sequenced through the hardware - is there 2x the=
 amount of hardware to process the streams in parallel? Is there a differenc=
e between making 1 DDC with 2 ports or 2 DDC with 1 port?
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-DD316D8A-4147-4D17-BDA6-212D7DA1E5B0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Phase time alignment according to the UHD Fo=
ur-oh talk from GRCON2019.&nbsp;<br><br><div dir=3D"ltr">&lt;<span class=3D"=
Apple-style-span" style=3D"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.2=
96875); -webkit-composition-fill-color: rgba(175, 192, 227, 0.230469); -webk=
it-composition-frame-color: rgba(77, 128, 180, 0.230469); ">end transmission=
&gt;</span></div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jul 26, 2=
021, at 09:18, Rob Kossler &lt;rkossler@nd.edu&gt; wrote:<br><br></blockquot=
e></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"=
>My understanding is that 1 DDC with 2 ports and 2 DDC with 1 port is not mu=
ch different. I got the impression from Ettus that it was really more of a c=
onceptual choice to match the 2 channel radios (2 chan per&nbsp;dboard) with=
 a like-wise&nbsp;2 channel DDC.&nbsp;<div>Rob</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 22, 2021 at 7=
:28 PM &lt;<a href=3D"mailto:thebouleoffools@gmail.com">thebouleoffools@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><p>Well it looks like in ddc.yml that num_ports modifies input and output=
. Is that just allowing you then to use the same DDC core for two separate i=
nput streams? How is that data sequenced through the hardware - is there 2x t=
he amount of hardware to process the streams in parallel? Is there a differe=
nce between making 1 DDC with 2 ports or 2 DDC with 1 port?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-DD316D8A-4147-4D17-BDA6-212D7DA1E5B0--

--===============7353319054326723460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7353319054326723460==--
