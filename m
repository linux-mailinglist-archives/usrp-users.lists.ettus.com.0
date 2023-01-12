Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F16F6678FC
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jan 2023 16:22:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CEF72384111
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jan 2023 10:22:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673536944; bh=C+PvcnHicaJWoQ6tMN+85/A6IxfjIjSTHxpDFz/NDUE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=G0oP2k9GhMaA+O7N8PxhKgwb/aCOo699JXXuOqYE4LRaA4lJtpqpxQ6keNFv/5J2q
	 PzBSKVTloyNcu9z89Nm2cvyLtN2Ne+D7EAU7xvppvBNHLjyZUquVKw6pu/aiR4cN6L
	 qMV+tKwW845o2qyNAcUDKgyeaBzLiKEKf1oi+G9HTKlakmTo7/ODQo4PeVySZrFaW5
	 1QpPm5es60EsGeYNXwY6t2l22ERTmlB89M6jwuBrFmHO2Xqrc2niDWUxeaxedyaciV
	 QQRjOmnZcBA6Bxo0iGfgughpWg/pOwdN5c9nJOpmdYbmx7NHnhD9JunwWxusih0xBu
	 iq2cJUv3JBmNA==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id AEAB1383F99
	for <usrp-users@lists.ettus.com>; Thu, 12 Jan 2023 10:22:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="bvfApRgo";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id fy8so45476004ejc.13
        for <usrp-users@lists.ettus.com>; Thu, 12 Jan 2023 07:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0QPtdhQjwCSucc8L4vC4LOrBePXteVBC1UPlJBZW4rw=;
        b=bvfApRgoCxc61MkbSqbU4Yx81s63Brt9IavPyb8xyDL2s9DFNR6OZOU3JEZbYPQv3V
         NT5gKyX7drcLrnS1XrxPAARi+5/OZVXz4QPY0uoOn7kin/7fm8fsRsPlqBRVUa9+fEwM
         lq8tY6FbRLPlyO3OAfnCXaLk+DZL/byzuwJ8O5tsXaZjqLy+oVMxpgTIokoateqZw/pI
         TH1tCai9D8sr5qYqj+uSUfLYXDcDAxY4suZWJNtf11EE+QxddRsiJjI1IhJ1DP2Del8A
         EWimkTG4a4Q5v1MCfvOG3PmdoONg6AFjQvHFJF0iW4zcQf+IgkPQ81BY98mvI9teJ3xj
         1wWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0QPtdhQjwCSucc8L4vC4LOrBePXteVBC1UPlJBZW4rw=;
        b=H/b5qoW74ojz9JV9unNN1aqLYPCieeK8dyv7JF2gbDwlvEyZ2bpXIWUpymGTGAwSVY
         byLQlkGD51KMcXgynHGznQpQGlxAgbJe8vwiKQhhKRp3DB6eyY/39UKG8/mEFbbbvuYu
         Y7WzrH1SRrpOjRZTILbYU7FX0rSLF+8U1UIx+XEE+v3KwZnI1z4f1nM7IRanqdTe+OkF
         mTozWSn0Vem69DdF/0uUd6ELRUNDdzDn3dN+iVpqLXndZLzik7igffSwUvu45J2vgBnn
         DCXZxW/wko8C99Jl8ghcMklAHANaWcd82mw26ZVIOPILbyCmWwR/gN8gFeELaAfNJjpm
         Ccnw==
X-Gm-Message-State: AFqh2kpIgjT9N5mb9uxB6YxqAUbvzSpl/J4ZUE/ry+HvdcH1b0bnn1Mg
	xlKUeLvgwATeYx+giOUVdUNoSTldKPqlI1SK4rUY5Q==
X-Google-Smtp-Source: AMrXdXtDPdYE8PRgtZFp98ePtj+ss6u8LKF2iclCctL9XLWva0Apl/JWQ55botWebgMx5hcrE2OWoG0VOQvgzFmfZkw=
X-Received: by 2002:a17:906:f915:b0:84d:458f:48c8 with SMTP id
 lc21-20020a170906f91500b0084d458f48c8mr1766184ejb.204.1673536936134; Thu, 12
 Jan 2023 07:22:16 -0800 (PST)
MIME-Version: 1.0
References: <K78sPqMF10RbpysteXutrkWIO4aJWuYpPMaki7gDU@lists.ettus.com>
In-Reply-To: <K78sPqMF10RbpysteXutrkWIO4aJWuYpPMaki7gDU@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 12 Jan 2023 10:22:06 -0500
Message-ID: <CAB__hTSmAXkKyeaUGsS+mM0z7uBZt6EyTzkH9RQGxuvOch0weA@mail.gmail.com>
To: perper@o2.pl
Message-ID-Hash: ANGHTYNC2MYOIJLPACAMUMIEEL7LUNDC
X-Message-ID-Hash: ANGHTYNC2MYOIJLPACAMUMIEEL7LUNDC
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC FFT block on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ANGHTYNC2MYOIJLPACAMUMIEEL7LUNDC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2643596450636173825=="

--===============2643596450636173825==
Content-Type: multipart/alternative; boundary="0000000000009968ef05f212ae48"

--0000000000009968ef05f212ae48
Content-Type: text/plain; charset="UTF-8"

Hi Piotr,
One method that may be useful to you for debugging is to create an RFNoC
graph with just one block, the FFT (no radio or DDC) and then configure a
Tx streamer and Rx streamer from the host to send and receive data from
this single block.
Rob

On Wed, Jan 11, 2023 at 10:17 PM <perper@o2.pl> wrote:

> Hi Wade,
>
> After applying your trick I get data flowing to the PC!
>
> The version of UHD that I used was 4.3.
>
> A quick test shown that the received values are all zeros
> - without any signal at the input and without setting proper carrier
> frequency.
> I need to dig into that. But having any samples being sent is a big
> improvement.
>
> Best Regards,
> Piotr
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009968ef05f212ae48
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Piotr,<div>One method that may be useful to you for deb=
ugging is to create an RFNoC graph with just one block, the FFT (no radio o=
r DDC) and then configure a Tx streamer and Rx streamer from the host to se=
nd and receive data from this single block.</div><div>Rob</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan =
11, 2023 at 10:17 PM &lt;<a href=3D"mailto:perper@o2.pl">perper@o2.pl</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi =
Wade,</p><p>After applying your trick I get data flowing to the PC!</p><p>T=
he version of UHD that I used was 4.3.</p><p>A quick test shown that the re=
ceived values are all zeros <br>- without any signal at the input and witho=
ut setting proper carrier frequency.<br>I need to dig into that. But having=
 any samples being sent is a big improvement.</p><p>Best Regards,<br>Piotr<=
/p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009968ef05f212ae48--

--===============2643596450636173825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2643596450636173825==--
