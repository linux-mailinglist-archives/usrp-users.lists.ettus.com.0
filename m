Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FB36EAE91
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 17:59:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C77E383DD8
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 11:59:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682092784; bh=VTTc1akNG5HtcQrFNLzKHssKc3UDd45bV3AIuZ252QU=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=pHMtMSHn5+6INxlDdHUHcDLoi14AZFeq5t5PzAgLWZ+NwW3mED9zmC9t34deCkQIf
	 PTvlRKpB7goOi8HDrvVZWZL1cdva7Cd+sfwlphALdbJXu4xYSZGOfTIth3UMhdvG9k
	 uJUNg/OPNR2R8F4O4bte+7SNppOofgzzt/lWOxbT5xTtfs5zZXlT2J6OQgcF/sadkc
	 V1hNQpfIYkRPre9x+/+ss+6QrP2fsKy2HC6FmkO/d943QGsTZS5a1LAD8yOxKl9ygj
	 NlmyePrjujRHIGzUhtgVuaBcy+IfF/Q2E91mIxosaj/XvB1pAEpzMK/k1CDuUJq4gg
	 ra6fi3CvT4zzw==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 68A8B3811B4
	for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 11:59:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="FUHV2YzU";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5050491cb04so2722317a12.0
        for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 08:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1682092762; x=1684684762;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QmDYO5Y2UZme5PzjAs6tFVhwlTnXYdg7AN2jWyXIBYg=;
        b=FUHV2YzUU/2imtBamsxrEwo1Q1CfSheZp1RDnsxMTL90YndTR88bLEDYWBWwbIMloi
         ZXQ0gbpdGQUWex2FUOwiq4z8jpjoaX4j2lDm+hMQdaP0YENxe/bEp+G9aOca1JPFfGlk
         HW+qfg+Yu5c7zTGSCgg4B5mP8gJCCLb7UF+UBVOLqYY9JmjNekqc/pVpQrU/uiHRHXgP
         Nalw9Ab/5hhVD58itPUpmPpo4rVEhjktwEAlbSMS3WF7GMjFPat6s/twjf6V8n6FKkDh
         +NOJAUVWZAwiE/4J9MDRUykwywXji+UyI3ZDYnFArRh7Z5UUazWTWCEHwG+jMYDjorlv
         yADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682092762; x=1684684762;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QmDYO5Y2UZme5PzjAs6tFVhwlTnXYdg7AN2jWyXIBYg=;
        b=io3E9D6e5uI5V3Ibn5xXnCuP+eF2CCZAxCHAQVZBHm4lemLpSHOZcIwYjFfH6UqW8j
         ITrcwUMx5IFk5m3RqK1w0oIIVKIdk1ZILvjBkP8ol1/jgAQiI3/bOga/INxtjbWimBv4
         JpTeiQQ02RukN3PKVo2Pe9t99E1+IHvcIfBsU60fjqE5oPyfsSJDF9u9xt0/dO1dootU
         I2Yo2WyS0i5kzLZbYigIqnUE9m8QXQ8wPH+sZQGcV7vd4PgwvqWW2AdNtnphFDOpby5c
         A6gbEwAfXKz1XNPppZsGVLl8rUwTc54k/4efVS3TZSl3K6BKduW5CQROcC613m96rJql
         +gxw==
X-Gm-Message-State: AAQBX9fU16khGKvgtPNQn3hWtsrKgP+RX+d6Ar51wsOay6H8dnB1gSCU
	EJwpJE7ld+LeI1tyuV+pCwo8SYK1CXhtmyqbgXL8uA==
X-Google-Smtp-Source: AKy350bVQzHV0gSzkMJ0qO6B2RImFGtUvZ2OJJO+iN5lxkQOeAOZ6Dpq98uZi2kSss7oswFnaNbvGS32af+gT9/Jmq8=
X-Received: by 2002:aa7:df0d:0:b0:506:9984:9239 with SMTP id
 c13-20020aa7df0d000000b0050699849239mr4691661edy.26.1682092761576; Fri, 21
 Apr 2023 08:59:21 -0700 (PDT)
MIME-Version: 1.0
References: <RECd6VBYG6MmBBgvJOXhYlGEvb6P2zq5tSK8mqPeF0@lists.ettus.com>
In-Reply-To: <RECd6VBYG6MmBBgvJOXhYlGEvb6P2zq5tSK8mqPeF0@lists.ettus.com>
Date: Fri, 21 Apr 2023 10:59:10 -0500
Message-ID: <CAB__hTS2MZCTJAHiXMcKRfcOue-yR-CX6CjPnni2a1vs3SLrYQ@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: AZE4RXBHWIAWWY7FZSKJDRGB2QSS26BM
X-Message-ID-Hash: AZE4RXBHWIAWWY7FZSKJDRGB2QSS26BM
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble recieving data from antenna
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AZE4RXBHWIAWWY7FZSKJDRGB2QSS26BM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7305108289703153485=="

--===============7305108289703153485==
Content-Type: multipart/alternative; boundary="00000000000088b1f805f9dabd25"

--00000000000088b1f805f9dabd25
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Could there be an issue with packet lengths?  Does the "spp" from the radio
need to match the "N" from the keep_one_in_N? I'm not sure one way or the
other or whether the answer depends on the setting of "packet_mode /
sample_mode".

Which device are you using?
Rob

On Wed, Apr 19, 2023 at 4:16=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> I have noticed after further troubleshooting that my antenna light
> actually appears to blink periodically. And I also seem to be getting
> overflow errors, even though my data rate is quite small(~5e6 samples per
> second, 32bits/sample, over ethernet).
>
> When I use the same data rate with the default image, I get a solid green
> light on the antenna, and no overflow message in the metadata.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000088b1f805f9dabd25
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Could there be an issue with packet lengt=
hs?=C2=A0 Does the &quot;spp&quot; from the radio need to match the &quot;N=
&quot; from the keep_one_in_N? I&#39;m not sure one way or the other or whe=
ther the answer depends on the setting of &quot;packet_mode / sample_mode&q=
uot;.<div><br></div><div>Which device are you using?<br><div>Rob</div></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, Apr 19, 2023 at 4:16=E2=80=AFPM &lt;<a href=3D"mailto:jmaloyan@uma=
ss.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><p>I have noticed after further troubleshooting t=
hat my antenna light actually appears to blink periodically. And I also see=
m to be getting overflow errors, even though my data rate is quite small(~5=
e6 samples per second, 32bits/sample, over ethernet).</p><p>When I use the =
same data rate with the default image, I get a solid green light on the ant=
enna, and no overflow message in the metadata.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000088b1f805f9dabd25--

--===============7305108289703153485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7305108289703153485==--
