Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F2C716F02
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 22:43:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C2C59384849
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 16:43:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685479414; bh=gACUG7TBSJqbiCe9MGmDEHiKOJVdwClQrYQSG2qyw4M=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LQPGFIS9t1l5ZPuD7hwIXV31YjpVKbMDR03V221mAvFANonTJJWJsyObF7pqwyfrr
	 Wr/4K0tZ+bzN0q6jsIk7xbrsgprJphDQyMIZvYXYuXxRqG6PDE7aauptMqGwLf6yZU
	 THXHcmdp9ienBWHhnUstYhcKxILldT7FhMuTP9FNbipIkDofkJvvFhAaGgwgTVpo7k
	 nuJ5BmwxFeZZPmcMJDu+x2OK6aPlvwKTCMa9xeg+fU331Dumvjgi50hdazJOqDZVRh
	 Dxg4kGOSrBCzo3sUW9O0mY9/7XA4V3ZAJ8F2C9dq4MB/KKP9E+J5YgWy96McUlv6Cr
	 d33OSF9Fi28bA==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id D4A6338481D
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 16:42:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="D6PCf34A";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6263b2526a0so5106016d6.2
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 13:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google; t=1685479355; x=1688071355;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YaN86y15uZoAGjZ5FwvffF4mGqtSJBR61ufI60V8cXo=;
        b=D6PCf34A9yvz4SbAU+TyI1LUyfAVc0CWzf78L5Iy4neDwEO0G2zrSwSS5nufRm0L3P
         8YYAWcoVKCQek3G16p4r0MCPJQIloNN0KJyPXjJmdpZlw6i8zxO9dgAVCAcpIVgaIfxR
         87WPf1DNKWsqbAJFRe7m3MqeCA9UDwRJOhrFI3ZMUI/uNN/HBez04VtRurZrMme8gmmw
         49aJtAqIvkhows9PrByNjF/hyIiS/K5rHl76pOs8g+dDiDWepiXPGQgxu06IXOrJ+ANF
         UZyaAX76MWk/ydfneA4IdmOAdx3cgfh5LaRYx77KENEUvj0+Mkcc+P/gJy5lBsH+oYS8
         NN7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685479355; x=1688071355;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YaN86y15uZoAGjZ5FwvffF4mGqtSJBR61ufI60V8cXo=;
        b=DGw6v4mY3nFdGdHlfA7VnGW/AjKnLRdRNosEMRvv5eaeVJcshe/g+Nzz/LC06lDakz
         9efZCW/ymgj1i2pbHyk1vXRQO2ZnIktUWntwhtuVLDmIPXfGyiq24acMYh0d/nKYMIKR
         MDHr8Df1ZllY5jxc6U6TnDY85FzwJiJ1Me/YS82TBlbrAJgN490dBa9yuJnzfhMhbAQw
         k18ArDL6rH5lRA4itQC7lN67u1jKRKPH3BKRtvTx6kWyBCLJHBWQP0XI1yWPLd+FHzk4
         mEmx/vnvgF9ZKSUipZZ3axuyNUin0yNm1qVa3ZTtJA5bKxBR1jyqkygZ0Fz1L+2xYTsP
         AlCA==
X-Gm-Message-State: AC+VfDwa2jOTykkJwQvrLoDKhZkhvJ/pDxI4+JsKpsjUZR0VvihYymzj
	1Ptg5NAu+Hh3Z2VsBJp2SbgVrVDyapqm4skdDoUSYA==
X-Google-Smtp-Source: ACHHUZ7/2j6veFr3fK3MVTHSskomGXWs9TzEoXfru5jLoMbMxCkWKWht5NHXzJJv07io7g+eAeU1iCJJNDH13fgONd0=
X-Received: by 2002:ad4:4ee6:0:b0:625:b517:6dd0 with SMTP id
 dv6-20020ad44ee6000000b00625b5176dd0mr4807233qvb.8.1685479355310; Tue, 30 May
 2023 13:42:35 -0700 (PDT)
MIME-Version: 1.0
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com> <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
 <7ed5a34a-8862-09ae-edfa-d5ca15947915@gmail.com> <JN1P275MB053547F1D25B83244EE59F8795469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAL7q81shBqtUzSaHseMO59rq1u3QSxSrA7bCaX-BVZo7FNRLZQ@mail.gmail.com>
 <CANq7nXcTe6FrDNXHiYUKY7VU-47UqdW3PtZj5eafBP84-2HhbA@mail.gmail.com>
 <4da2d23c-0854-582c-a191-deb5476488fe@gmail.com> <CANq7nXeVL8ActLms9N5kCAb78ALSrKPBb-agALYJjzNk9Yi9mg@mail.gmail.com>
 <CAEXYVK6JLh_C4cb6GbPYCFxNBv=U3AgUdqP=yBkmSH7Vey4wOQ@mail.gmail.com>
 <CANq7nXf266iBvAARXfrmebaTeZFskaCPwvXHvvWT+Hzg-sVghg@mail.gmail.com> <CAEXYVK5NEVExmcf0uhbXjOABwRbbxC+yvY0pZ7dBX22rYom27Q@mail.gmail.com>
In-Reply-To: <CAEXYVK5NEVExmcf0uhbXjOABwRbbxC+yvY0pZ7dBX22rYom27Q@mail.gmail.com>
From: Mena Ghebranious <mena@chaosinc.com>
Date: Tue, 30 May 2023 13:42:24 -0700
Message-ID: <CANq7nXfUvuDaLbOx_admWoNNsVt1eJN15L65uS-VmniAhh=u1w@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: IF2PS3ORMP3JQM3UZAWFFOSCLAUAPX5W
X-Message-ID-Hash: IF2PS3ORMP3JQM3UZAWFFOSCLAUAPX5W
X-MailFrom: mena@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, Jonathon Pendlum <jonathon.pendlum@ettus.com>, Leon Wabeke <LWabeke@csir.co.za>, Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IF2PS3ORMP3JQM3UZAWFFOSCLAUAPX5W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6080603214132266176=="

--===============6080603214132266176==
Content-Type: multipart/alternative; boundary="0000000000003ffb9105fcef3ea3"

--0000000000003ffb9105fcef3ea3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I don't see any bypass logic in the FPGA code, but in any case, the N320
only supports three master clock rates, none of which is our desired
sampling rate:
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Support=
ed_Sample_Rates


On Tue, May 30, 2023 at 11:44=E2=80=AFAM Brian Padalino <bpadalino@gmail.co=
m> wrote:

> On Tue, May 30, 2023 at 2:27=E2=80=AFPM Mena Ghebranious <mena@chaosinc.c=
om>
> wrote:
>
>> Yes, bypassing the DUC was discussed among our team, but as far as I can
>> tell, there is no way to configure the bypass via the UHD/USRP API - it
>> would require an FPGA mod.
>>
>
> If you set the input rate to the radio to be the master clock rate (i.e.
> the radio sample rate), then it should bypass it automatically with the
> default FPGA image.
>
> Have you tried that?
>
> Brian
>
>>

--0000000000003ffb9105fcef3ea3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I don&#39;t see any bypass logic in the FPGA code, but in =
any case, the N320 only supports three master clock rates, none of which is=
 our desired sampling rate:<div><a href=3D"https://kb.ettus.com/USRP_N300/N=
310/N320/N321_Getting_Started_Guide#Supported_Sample_Rates">https://kb.ettu=
s.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Supported_Sample_Rates=
</a><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, May 30, 2023 at 11:44=E2=80=AFAM Bria=
n Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, May 30, 2023 at 2:27=E2=80=AFPM Mena =
Ghebranious &lt;<a href=3D"mailto:mena@chaosinc.com" target=3D"_blank">mena=
@chaosinc.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr">Yes, bypassing the DUC was discussed among ou=
r team, but as far as I can tell, there is no way to configure the bypass v=
ia the UHD/USRP API - it would require an FPGA mod.</div></blockquote><div>=
<br></div><div>If you set the input rate to the radio to be the master cloc=
k rate (i.e. the radio sample rate), then it should bypass it automatically=
 with the default FPGA image.</div><div><br></div><div>Have you tried that?=
</div><div><br></div><div>Brian</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--0000000000003ffb9105fcef3ea3--

--===============6080603214132266176==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6080603214132266176==--
