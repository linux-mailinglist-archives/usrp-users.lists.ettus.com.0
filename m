Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D62CC97D813
	for <lists+usrp-users@lfdr.de>; Fri, 20 Sep 2024 18:12:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 252B4385968
	for <lists+usrp-users@lfdr.de>; Fri, 20 Sep 2024 12:12:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1726848754; bh=YpcKjPRzkxqYXErAxwh7pW/S+I8DZZPgilYbC0jV2bo=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HL78sVTm5GjN/kE7F2zIbO6W8qDBIvJgouoTkrMZLunwfq+VVlOcjmDJRmec9xkri
	 kkUjIUKzOOam5z3jm2VOLOLzgRz7WmRn+lhg9dx7M27jIYWF5TA6NkdF9bgnmkCBHr
	 rd+48+bihMFNennXAEtqb+M6gLmGFLQ2bGbL3OyNTHVdOdJfnaQKMTW2qJ3ja/weGS
	 8hPVEOmovs+reKM2TGwlM9lj0vHWFcmzRjzhSJJN9mNHIRiHN5yiU1FT+zP7yZvup1
	 LNZFMoOnvMkWy3A1WbZt1Z5nJVxNlhXgQ2NiqYRcmAmr5ZibStr1DhGyOFToo9G45k
	 KzTH7SgCUq8KA==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id EC05438568F
	for <usrp-users@lists.ettus.com>; Fri, 20 Sep 2024 12:11:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NyDp6BUS";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6c35a23b378so13044846d6.2
        for <usrp-users@lists.ettus.com>; Fri, 20 Sep 2024 09:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726848701; x=1727453501; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y4aaUxGGMG+6OAw+uHufCiZrcrVibeu1+ioavhJ5dZI=;
        b=NyDp6BUSHJEy5p5LL1gZgLPgtYT/luncUR43w4c/Dvv1+xYViLsg6TVHM6GZ+pUPzk
         AnPtWQvkiV7MJFhLF4173lTSKWjUvMJVpTrCKM64B2+kgpD0TerCRc0Z0n6ZLUIuEqxo
         7mhK406md/gC+j5IWV1HJ/JHXjPfK5dy7m+gbilnXjzaskzW3UVkgtQJ6xcP294+fXu9
         rcJ8YM8lgXqqq3t9e2fAzoYt7DTVAQs8bxk5qJSzfVG/chmh1JvgnDu4Ikvw699gz+EV
         YQmVHEs4f3hWfqC9hflI+bZM910/2MsvR5thAvnJbhr9ZJgcfsWJS1c23oqizyeTdX8k
         TcPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726848701; x=1727453501;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y4aaUxGGMG+6OAw+uHufCiZrcrVibeu1+ioavhJ5dZI=;
        b=B898BDYBIEXbMt6Nw4c7wtVts7782IkTREIgsLzlQQ+2vXUFnNi60PZPAlcvbBgrjv
         AGG71x5evNM7TDgZ0MM7ClaoQlfCNAaMaVO4caaOpLDvhAdn1szouQwN+F4/djTLBPOQ
         rEjsZ+3FxcwbDzZuzrIwxo7LHpBRhn05yrxREmTwEHY0INHiUcmWwA0BslsCYe3+4nDU
         fVEwZDP3NDI4T5iPQBLfiQj/RH7LvwLx1aCTLM2JJXKkcj/W0s8CyzuFSE9j+sWk53cK
         53op4aDXUOS4UBpnZUCnJeA6y6n8fwxRbNQSn3CtcOOixASyR9Tu5xKTj23g/wYJ6bPM
         Qvvg==
X-Gm-Message-State: AOJu0Yz/c93rUs4YgfLVvEhZhJlzJ5McJYVOfgckPyR+Q3d1RMk/9FSw
	9IFVbd9eUJIx8rmAF7RpMMY9rAKgnBNlYpqno+sFOmL9jwRTm8+moBRzsw==
X-Google-Smtp-Source: AGHT+IH6HbQQOEpmYIM/3VI7e5XBfX9lyEbtdV0+qZnnnV7M5L++EIaOJ0O9pPpW06WOxKA7gjP3Zg==
X-Received: by 2002:a05:6214:5703:b0:6c5:4e45:a6bc with SMTP id 6a1803df08f44-6c7bc68fe69mr41106346d6.14.1726848700861;
        Fri, 20 Sep 2024 09:11:40 -0700 (PDT)
Received: from smtpclient.apple ([142.183.237.12])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c75e46ff7fsm19391616d6.50.2024.09.20.09.11.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Sep 2024 09:11:40 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 20 Sep 2024 12:11:28 -0400
Message-Id: <CF36C49D-915D-4EF0-9A60-BB17095BAC2C@gmail.com>
References: <SJ0PR09MB91264BA57D0CF1ACE3D75F97EC6C2@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB91264BA57D0CF1ACE3D75F97EC6C2@SJ0PR09MB9126.namprd09.prod.outlook.com>
To: Eugene Grayver <eugene.grayver@aero.org>
X-Mailer: iPhone Mail (21G93)
Message-ID-Hash: 6QTATJ2IIFDWROVIOP3PCVUHPZ2CEKGT
X-Message-ID-Hash: 6QTATJ2IIFDWROVIOP3PCVUHPZ2CEKGT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Automatically power on after power loss
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6QTATJ2IIFDWROVIOP3PCVUHPZ2CEKGT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1645677580985948208=="


--===============1645677580985948208==
Content-Type: multipart/alternative; boundary=Apple-Mail-DC73C06B-FD91-4314-ABF0-3E47F149FD48
Content-Transfer-Encoding: 7bit


--Apple-Mail-DC73C06B-FD91-4314-ABF0-3E47F149FD48
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yes. There=E2=80=99s an identical paragraph in the same document for N32x.=20=


Sent from my iPhone

> On Sep 20, 2024, at 11:48=E2=80=AFAM, Eugene Grayver <eugene.grayver@aero.=
org> wrote:
>=20
> =EF=BB=BF
> Hi Marcus,
>=20
> Thanks for the quick response as usual.  The wiki says the flag is specifi=
c to N310.  Does it apply to N3xx (i.e. 320/321) as well?
>=20
> Thanks.
> From: Eugene Grayver
> Sent: Thursday, September 19, 2024 2:28 PM
> To: usrp-users <usrp-users@lists.ettus.com>
> Subject: Automatically power on after power loss
> =20
> Hi,
>=20
> The 'soft' button on the N32x does not have an 'on' state.  The X310 has a=
 real button that can be pushed in.  I have remote N32x devices that are not=
 (easily) accessible.  How can I make sure they power up after a power outag=
e?
>=20
> Thanks.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-DC73C06B-FD91-4314-ABF0-3E47F149FD48
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Yes. There=E2=80=99s an identical paragraph=
 in the same document for N32x.&nbsp;<div><br id=3D"lineBreakAtBeginningOfSi=
gnature"><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blo=
ckquote type=3D"cite">On Sep 20, 2024, at 11:48=E2=80=AFAM, Eugene Grayver &=
lt;eugene.grayver@aero.org&gt; wrote:<br><br></blockquote></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=




<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; col=
or: rgb(0, 0, 0);">
Hi Marcus,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; col=
or: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; col=
or: rgb(0, 0, 0);">
Thanks for the quick response as usual.&nbsp; The wiki says the flag is spec=
ific to N310.&nbsp; Does it apply to N3xx (i.e. 320/321) as well?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; col=
or: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; col=
or: rgb(0, 0, 0);">
Thanks.</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" sty=
le=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Eugene Grayver<br>
<b>Sent:</b> Thursday, September 19, 2024 2:28 PM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Automatically power on after power loss</font>
<div>&nbsp;</div>
</div>

<div dir=3D"ltr">
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFon=
t,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:rg=
b(0,0,0)">
Hi,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFon=
t,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:rg=
b(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFon=
t,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:rg=
b(0,0,0)">
The 'soft' button on the N32x does not have an 'on' state.&nbsp; The X310 ha=
s a real button that can be pushed in.&nbsp; I have remote N32x devices that=
 are not (easily) accessible.&nbsp; How can I make sure they power up after a=
 power outage?</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFon=
t,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:rg=
b(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFon=
t,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:rg=
b(0,0,0)">
Thanks.</div>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-DC73C06B-FD91-4314-ABF0-3E47F149FD48--

--===============1645677580985948208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1645677580985948208==--
