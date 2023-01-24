Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 564046798E3
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jan 2023 14:05:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ECF14380BCB
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jan 2023 08:05:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674565518; bh=y6OXNwtkGqcBEAQRJNFzlAC6SGmBGowrs7xn54Vd8OQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=B+6Ow4lD5yiRSRt9RLg3Ic1Ye7WgMLidgYF87Accz54i887CSmxrenNfKB3dbQ8B9
	 CUj1RsILH6A9IaeyyNjkpPDq7rlxy0tDPKw9Hk2bGxTIwRfhuKLRcLJvoLrETOzjTz
	 6R4UPdFXQzfV2Ns2lrn+C5wwoJ/wpsjauoVq7WY/aV+s02ByZ9aP7CmV0vCxD7p1tV
	 PrHe6fs+AcX+kcU0Y1L1XQrC8VGE9FbM0QihLGps/i9HMkksPMg4Kx6tLAuOsu8dZs
	 NZ3gVw6T7462/s30XSfj4r2OEo0dgQ0ZtfszgO98VUJKq+x9kleAmTfzzNjpnGWyZo
	 116y8K/PDL6FA==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id CE035380014
	for <usrp-users@lists.ettus.com>; Tue, 24 Jan 2023 08:05:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="VItUoVA/";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id bk15so38745602ejb.9
        for <usrp-users@lists.ettus.com>; Tue, 24 Jan 2023 05:05:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vKZkKsmmdk4LD/mwV+AR3pixPFrcitTiZ9wi0oo9yrE=;
        b=VItUoVA/Rx/mPGooaQGfoIKGsgbe01xPn1ezCLRyOmRF4jfZuO0fdy+HsrC3KQLbf0
         3ON78P8661qMcyVhvTfk844E4Bfe9tRTNcw5ym4Wkli+To0NEztGs9B7jQ7nCSP/bQUV
         Q1WxJ9IgGNQpl88Ou3TPV4Bg6BJQMyl0i5TBDqontqlUfTf00auFxCeRY/EMbrZgcTY7
         lRo6cph4MHyJNFxsSfcpMLwNzvGx59jJ3QMYFO2ZBz9Lucn26IgAg78qsFWCf+YAxwvq
         EKL6nNfhxvMM4el5FXnEO2QNASJ0n5rXZQzS2jfNrD5QnGraXhszz6BLW3tUhI8BFOLq
         bD6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vKZkKsmmdk4LD/mwV+AR3pixPFrcitTiZ9wi0oo9yrE=;
        b=78aFm7ZOKwlF7VjWMjWbFXWnlFna4HlxIB3dZlVtf2y5Q7WhbeOtQsuWor0+pK0+uL
         sei/Yyyd60coojSlLb7K9JNxjKVAABD/PcPl7r88zG0Iof3PQEUpLJUN1107aibInzNu
         yLH0p660LT1AFOE7tEytLwcYQyMDJNxhIw0mx9etCJiHJsgQUb5sOBYgbvv3inc8X8Ca
         GSlpC+jWMmlryUVtHE3pmorFtNnKzao+FcqfI2XEsZKY6mFWflgLZqzCKVylKLZh2/wY
         ZdZl11rfjR8xggxYjnd1Fc2U01V7UoAaxtGomrBIYOkIPZJ1Ts/U+TSw1Rm6gIjtwoAD
         CgXw==
X-Gm-Message-State: AFqh2krZ5ViFYy+4fqL3LozcBEcHgWFNq8jqhOgne16IQqey0LQDuUJU
	rJfvItzP2pkbESYNJY6I2xiJhfXSJeBM7G3jM51UsrJH
X-Google-Smtp-Source: AMrXdXtThGY7UV234RO0m/heAUBrBZjyvyicN0be8B5Hsihx5DBLjsv1Rjs5zpHKuuT8kJpXQYLbmIKwzxm+V1apy5I=
X-Received: by 2002:a17:906:5a94:b0:84d:3b9a:e2b3 with SMTP id
 l20-20020a1709065a9400b0084d3b9ae2b3mr2396442ejq.318.1674565511588; Tue, 24
 Jan 2023 05:05:11 -0800 (PST)
MIME-Version: 1.0
References: <CAEygNrYrtJXcbwyPZuky+fZjvfiOZQmeN3uMG0A2gdK1fwMSCg@mail.gmail.com>
In-Reply-To: <CAEygNrYrtJXcbwyPZuky+fZjvfiOZQmeN3uMG0A2gdK1fwMSCg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 24 Jan 2023 07:04:56 -0600
Message-ID: <CAFche=gV_JPa7kUE3DGzqhsK8jtD7Zf4176O+2vCRUm+-nQm1Q@mail.gmail.com>
To: mychk1 1 <mychk2@gmail.com>
Message-ID-Hash: QLT3WXI62R5WB2TCJU7RVWJQATLXYTBU
X-Message-ID-Hash: QLT3WXI62R5WB2TCJU7RVWJQATLXYTBU
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Dears,
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QLT3WXI62R5WB2TCJU7RVWJQATLXYTBU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7699937373499923558=="

--===============7699937373499923558==
Content-Type: multipart/alternative; boundary="00000000000078c39305f3022ab1"

--00000000000078c39305f3022ab1
Content-Type: text/plain; charset="UTF-8"

No, this is normal behavior for N310.

Wade


On Tue, Jan 24, 2023 at 4:56 AM mychk1 1 <mychk2@gmail.com> wrote:

>
> I'm using USRP N310. I observed that the fans is regularly speed up down
> without any streaming. I just connect SFP0 and the ETH. Is there something
> wrong?
>
> BR,
> Marchin
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000078c39305f3022ab1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>No, this is normal behavior for N310.</div><div><br><=
/div><div>Wade</div><div><br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 24, 2023 at 4:56 AM mychk1 1=
 &lt;<a href=3D"mailto:mychk2@gmail.com">mychk2@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div><br></div><div>I&#39;m using USRP N310. I observed that the fans is reg=
ularly speed up down without any streaming. I just connect SFP0 and the ETH=
. Is there something wrong?<br><br></div><div>BR,<br></div><div>Marchin <br=
></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000078c39305f3022ab1--

--===============7699937373499923558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7699937373499923558==--
