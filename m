Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF66238D863
	for <lists+usrp-users@lfdr.de>; Sun, 23 May 2021 05:00:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2D786385104
	for <lists+usrp-users@lfdr.de>; Sat, 22 May 2021 23:00:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="s6UToBDh";
	dkim-atps=neutral
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 9741A383F85
	for <USRP-users@lists.ettus.com>; Sat, 22 May 2021 23:00:04 -0400 (EDT)
Received: by mail-qv1-f41.google.com with SMTP id eb9so12515584qvb.6
        for <USRP-users@lists.ettus.com>; Sat, 22 May 2021 20:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=tADFnnR4mlakZ4QF+cxzL8a6I3/JfB2z62ZS9+J7HGc=;
        b=s6UToBDhtkapv1UnqKLdbDIg/JlB5Gs1slFdjmQzoN1S5B29ptplb8pXi1FTolHHMJ
         jeYRI6mnbhANtg8jpAMD+vacE4BPpX1WmBJvd3rza/ELuJHt93EBXmbTbC/Zcgnx7BbY
         TyhigHIOZUp4Kvp7ej92ymzqpEa2MljUFGLeZ+3e4KYE3U+/E1z9R+J0s9N6YRvJUxX9
         wA6vltglhmSzTkMBe5mY+18OHW802FKnZe3dJICWK9Ysq3saADdxvOWwSAKrz1yO8gQV
         IUMQkNUvuWfUGtBIGccJ7EAngl23GvuxsCBDWhX4NsJmezxXzzNVQQ6vn1pzG4SGYflb
         Xtgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=tADFnnR4mlakZ4QF+cxzL8a6I3/JfB2z62ZS9+J7HGc=;
        b=jUdjjhRZSq5OPuUdHp2T6SnSpQUHCX3dagzZ0/aFYniWIWXp2cjWDnXh71TPM56FD3
         GdO0wRaIgjCxipmMYBuYIAsXyOZJqe1LYpp3Say0Yb+dNNF0terRsbdidOTcUJHZnOdh
         8rk+o0+JT6Lz8uYzUjndhjBylbj1AJLk2flyeIQhMM7je+kZ+ts70ESpf9N5j+TLHH+/
         XI92RT+BUMm5rpJzHN4BAdXT+cJb8lNTHA54MujYeQv1FmDNjSsCWriT78y2wZzeu/3S
         a+dc4+PJQkTcHRWnyYOlxYw7ZPE7Hg3SwnFNt1X97zVEv6ZVsK20tO01HFmBRa9FR4ui
         s46A==
X-Gm-Message-State: AOAM531Bjphm+i8SuQ2SIyjBuvYRbgaBMWC/3IfhbOCJycBbAIlhgQAn
	ee5OeUi+Ns30FJANYOeYqgs=
X-Google-Smtp-Source: ABdhPJzOuOdR/DMpQPZ0PFV3MlIOP//k7NhKTINagerNMbWdkEU+5EcD0GuPexAMqdS5q7BoJ8ie4Q==
X-Received: by 2002:a0c:f294:: with SMTP id k20mr22309730qvl.45.1621738804175;
        Sat, 22 May 2021 20:00:04 -0700 (PDT)
Received: from [192.168.2.132] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id b7sm7251069qte.80.2021.05.22.20.00.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 May 2021 20:00:03 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 22 May 2021 23:00:02 -0400
Message-Id: <279644C4-AF18-4D08-B2AC-21B9FF5EEDBB@gmail.com>
References: <TYYP286MB1407EBA5E5C751049DE906B5F0279@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TYYP286MB1407EBA5E5C751049DE906B5F0279@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
To: Oscar Pablo <oscar_pabloo@outlook.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: USGBPEUX4ZH7AZIRCHXMZU7ZEDTO2HSB
X-Message-ID-Hash: USGBPEUX4ZH7AZIRCHXMZU7ZEDTO2HSB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to get time of last pps during streaming
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/USGBPEUX4ZH7AZIRCHXMZU7ZEDTO2HSB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0495723876741912100=="


--===============0495723876741912100==
Content-Type: multipart/alternative; boundary=Apple-Mail-1230BD22-B1BA-47E6-85A7-D2EB723EEC3F
Content-Transfer-Encoding: 7bit


--Apple-Mail-1230BD22-B1BA-47E6-85A7-D2EB723EEC3F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The usual way to arrange this is to have a thread that you use for data gath=
ering and a thread that you use for occasional control functions. There shou=
ld not be any overrun issue, unless you=E2=80=99re running at very close to l=
ink capacity.=20

Sent from my iPhone

> On May 22, 2021, at 10:36 PM, Oscar Pablo <oscar_pabloo@outlook.com> wrote=
:
>=20
> =EF=BB=BF
> Hi,
> i want to know the time of each pps during rx streaming. i don't know if i=
 call get_time_last_pps will cause the overload? is there a way to let uhd p=
ut time of last pps in the meta data of the received data?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-1230BD22-B1BA-47E6-85A7-D2EB723EEC3F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The usual way to arrange this is to have a t=
hread that you use for data gathering and a thread that you use for occasion=
al control functions. There should not be any overrun issue, unless you=E2=80=
=99re running at very close to link capacity.&nbsp;<div><br><div dir=3D"ltr"=
>Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On M=
ay 22, 2021, at 10:36 PM, Oscar Pablo &lt;oscar_pabloo@outlook.com&gt; wrote=
:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
i want to know the time of each pps during rx streaming. i don't know if i c=
all get_time_last_pps will cause the overload? is there a way to let uhd put=
 time of last pps in the meta data of the received data?<br>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-1230BD22-B1BA-47E6-85A7-D2EB723EEC3F--

--===============0495723876741912100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0495723876741912100==--
