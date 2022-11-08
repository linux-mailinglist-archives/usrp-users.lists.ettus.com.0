Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B43C6218C9
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 16:50:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B148B3837BE
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 10:50:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667922649; bh=YvthmVOzWhnhTJr+41WQE6Tr2+557HwENJ08EwOjDXg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PpJutuf3DGd93dOo3eavPPvwIR+HHaCAVV0uqbvRxeY/8dE/OYJj/rxqtN7Vg9Eif
	 j35O4NeBZjVIunKcbtZBnXsA/0UJR7STBwUf0s9XtGbnR3s/KElD4LtqavgiVa/8nH
	 OdiFCnkN7KxbfLR7ZmOGhTywTSUM1mgR2yLiCJp8VQmTGoDjn+qi3W2A93QOipsdTl
	 USezIFK9BObdhWfIu+MTwDv3HNrvEcwCldAK1qckc4+jaxUC3d4Ys7GJqIAuvqVDQW
	 FZkPmQ9kRhBF8k+5fe4EKo+s8wVIMMmADwcP0RvXTNsvW+Z2XnZKRODLka5IGO4Ajj
	 wZPdtr6tz4K+w==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 89E6038140E
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 10:49:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="AIAQLtRC";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id b2so39716965eja.6
        for <usrp-users@lists.ettus.com>; Tue, 08 Nov 2022 07:49:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OU11zqCWO4SFxbIIDP9t7x7QbC04y0a5XJs/+N6vn6I=;
        b=AIAQLtRCDc7JzujQ9crqlYldbnUM4kJ4Mf98PUJ1f8UgblxDq5Y9S+V/79USe7OwUN
         5/lFKuZYsZvXpWNkvcD9yiJ+OroNaKsbmVeMVy7c4l3CRBJOLGrtDsgzN0+x/ZLj3J3R
         1zyi1PbviyF9ddR0MVB46FVC41TBTWURjj2GHmZ0tGl8OVFOoDKgkVegAehoN1xaVkko
         ckpycODcJUr8yc4h+ZTsRDa6X02G7aVGU1Z/GJV1L1os45CpCgXjhPMKGqpnnOEJWqTk
         Lj/QGkt0cEfAvouIIQfCwDKSNhU971cWTn3Q0JmL+bQwszx4cjmIP+qtGozQgVO1v0b6
         QQ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OU11zqCWO4SFxbIIDP9t7x7QbC04y0a5XJs/+N6vn6I=;
        b=oJcNi0JmzrKabVyOqmX+B4njbwG5BgzMZJdeqOE/Q7NxdE95B1zflQqo1zOQqmAbPn
         BpclRMqqpES5m9YP8RPmjttRjqBzCjx1HXtuNyUATePDf4krxWrweoRT8/3abWco4tj/
         FMw7wlQ7ZNOriWan7D3JCnzTYPg0f1o2G4Rrkq9FLfyN5ZYVkLug4xjkD3VjYas2bxDU
         7SdtkAIyrLawU+41211NgEQ03z4dzNrvemJdVX1iAGDouvRP8E4GywALi+l9Qo+Y0xJd
         uM9h4k4vmqCvoepGFcVe/1Nar0XOWnam0zwhWzRgt/qWkLGQpmBcRiUw3BEz+g9eKZqZ
         w0xA==
X-Gm-Message-State: ACrzQf3wKkkwQSqHf2/fSJSbjjnuxlrqZ56BZps5T6/G4KjtcA5nLjuI
	4s3sPiPAPgttNVFtcxBlKGk1NDGHMgVPR1cKbSNdQzlawshK8g==
X-Google-Smtp-Source: AMsMyM7xMl8+cNPe0bSjcfTrjRghlthmBWChQQmF8+gx2pXvZdLyyIWhpeHTReAvYCAxOvc2i9p3li9bCgFBzKitHts=
X-Received: by 2002:a17:907:1c10:b0:791:a716:5089 with SMTP id
 nc16-20020a1709071c1000b00791a7165089mr53729917ejc.672.1667922573440; Tue, 08
 Nov 2022 07:49:33 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PsBqq0vQjU-joEsa4Bkx75xvZUxOhk_r93tkMaRffpwyA@mail.gmail.com>
In-Reply-To: <CAA=S3PsBqq0vQjU-joEsa4Bkx75xvZUxOhk_r93tkMaRffpwyA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 8 Nov 2022 09:49:14 -0600
Message-ID: <CAFche=j4eXgU6k2BVMY5kfFSrgrftGYmV1_GE1OGWSZ6SVbwuA@mail.gmail.com>
To: sp <stackprogramer@gmail.com>
Message-ID-Hash: 7AUKB3H4M4SZ7BGSFGLTIJVAGSOS7CND
X-Message-ID-Hash: 7AUKB3H4M4SZ7BGSFGLTIJVAGSOS7CND
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can we develop two RFNOC block that there is a reg relation between them?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7AUKB3H4M4SZ7BGSFGLTIJVAGSOS7CND/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1924677693502927348=="

--===============1924677693502927348==
Content-Type: multipart/alternative; boundary="00000000000080d73f05ecf77cc6"

--00000000000080d73f05ecf77cc6
Content-Type: text/plain; charset="UTF-8"

Gain and multiply are pretty simple operations. Perhaps you could put them
both in the same block? Then you would not need to share this register
between different blocks.

Wade

On Sun, Nov 6, 2022 at 1:06 PM sp <stackprogramer@gmail.com> wrote:

> I am developing two RFNOC blocks, a gain block, and a multiplier block...
> But I need there to be a reg relation between RFNOC blocks...
> for example, a multiply_const is calculated in multiply rfnoc block and it
> is used to block gain...
> when I add the reg in rfnoc block and I define it as input and output
> .......
> I redefine rfnoc block in this file........x300_rfnoc_image_core.v
> when I build again, x300_rfnoc_image_core.v will be deleted to the
> previous state. How can solve this problem?
>
> I ask this problem in this link but my problem is not solved yet...
>
> https://lists.ettus.com/empathy/thread/R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO?hash=R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO#R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000080d73f05ecf77cc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Gain and multiply are pretty simple operations. Perha=
ps you could put them both in the same block? Then you would not need to sh=
are this register between different blocks.<br></div><div><br></div><div>Wa=
de<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Sun, Nov 6, 2022 at 1:06 PM sp &lt;<a href=3D"mailto:stackpr=
ogramer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I am developing=
 two RFNOC blocks, a gain block, and a multiplier block... But I need there=
 to be a reg relation between RFNOC blocks...<div>for example, a multiply_c=
onst is calculated in multiply rfnoc block and it is used to block gain...<=
/div><div>when I add the reg in rfnoc block and I define it as input and ou=
tput .......</div><div>I redefine rfnoc block in this file........x300_rfno=
c_image_core.v</div><div>when I build again,=C2=A0x300_rfnoc_image_core.v w=
ill be deleted to the previous state. How can solve this=C2=A0problem?</div=
><div><br></div><div>I ask this problem in this link but my problem is not =
solved yet...</div><div><a href=3D"https://lists.ettus.com/empathy/thread/R=
7N27SR37EPZKMJLG7K6FR3FKBXOMBNO?hash=3DR7N27SR37EPZKMJLG7K6FR3FKBXOMBNO#R7N=
27SR37EPZKMJLG7K6FR3FKBXOMBNO" target=3D"_blank">https://lists.ettus.com/em=
pathy/thread/R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO?hash=3DR7N27SR37EPZKMJLG7K6FR=
3FKBXOMBNO#R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO</a><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000080d73f05ecf77cc6--

--===============1924677693502927348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1924677693502927348==--
