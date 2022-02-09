Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B034AFE75
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 21:29:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77BD63843D4
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 15:29:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="N1Fa4zNf";
	dkim-atps=neutral
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id B3DA0384CF3
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 15:28:54 -0500 (EST)
Received: by mail-yb1-f175.google.com with SMTP id m6so9365566ybc.9
        for <usrp-users@lists.ettus.com>; Wed, 09 Feb 2022 12:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=55n1MgS3ftJlMY3mrcddhFBElFcQl4A3rohixNMFKTY=;
        b=N1Fa4zNfoae+lh578JsjjqRsMBAqXcJLR/Ba6AFqcw6pEK8mc4JaxnsRWKEk3wFrSG
         cZha6+W1kyZ/f6z8ZwSjplZnIhV2DK35BA2ihRsnntaiY/v5PURP/LP7BsoXM6aWeCvd
         fBIzDwXBV6aUQH7PqcQhiqA1ciBEIOKy9MWtwY63qmj6uKfUt/ilWCqwIf0Yaa5dVVj8
         5dbc4mnZRgye5fVTyNYuhyau8SgbAgbrF1DPUvfnrs7u4F0WvEFxHjP6XT6j6fF41r/K
         pPQigyIHSssUcHktQdsQDz+iDaadw0qFCH8+qk9MBzfI9+Tr5r38O5S0tIkvgA8LRKC7
         zmlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=55n1MgS3ftJlMY3mrcddhFBElFcQl4A3rohixNMFKTY=;
        b=yWpo6AfZRe7E6Xxt3cVRK7Q795fUs93tJCde/ScdxYZSclNQsPHDAEnD8OG8bcAiVQ
         1oElsjGnHGm75xJ5EmDlIA3jzO5JfAi41b9d9hkl8kJWpc3349Ae7Yj0oBs0Do39+bgg
         VvAyrqG5kKREHv3rxmyrRAKKzCJOLVQcgBdlL0cqVGliOYNtP4lIIsltDsB0mHtlTqNT
         9yGR92j12mcCcXhxMUSnDgUXQbr2TnwhEdqPY5TQblaFsSOVaKmjiPma7QFaK4oqwKki
         5YRns5lq0ZtebxU2wBufiWQbc8Arl6izOfxbaJWYqGtRUW0DfUd6i2YTXWI33M6OyyDC
         oJOg==
X-Gm-Message-State: AOAM5306heqM3RPQdTPL+iyI4ahoZCSR59NMwUBV4aawX1E3jLL2BfB9
	FI7gJW9DdQ/h+JkZwWibiEZnU5v/4tBD96pShHO6GEt9tOhTbw==
X-Google-Smtp-Source: ABdhPJzFDu3qTXf1zPJdYk4rt+wOvty345oxp7FA8cY36KE17HVuXI+xwzjkFh6+Ygdea1rHcbM1lYhzkMkfEYBdDUY=
X-Received: by 2002:a25:99c3:: with SMTP id q3mr4113088ybo.144.1644438533798;
 Wed, 09 Feb 2022 12:28:53 -0800 (PST)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 9 Feb 2022 15:28:43 -0500
Message-ID: <CAB__hTSyT==Q_Nfn8xgfT-FBuutZ_ieD_CKuc-PdA3xm6KHs4w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: C6BQXZH4AL2GDVSU6GXGWTTVVRVYOWXK
X-Message-ID-Hash: C6BQXZH4AL2GDVSU6GXGWTTVVRVYOWXK
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Replay block on E320 data rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C6BQXZH4AL2GDVSU6GXGWTTVVRVYOWXK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5888972606701136664=="

--===============5888972606701136664==
Content-Type: multipart/alternative; boundary="000000000000a9b40405d79bae52"

--000000000000a9b40405d79bae52
Content-Type: text/plain; charset="UTF-8"

Hi,
I am wondering if there are any data rate restrictions for using the Replay
block on the E320.  I have a 4-port Replay block for simultaneously playing
two streams to the 2-port Radio and capturing two streams from the 2-port
Radio.  If the master_clock_rate is equal to the sample rate, does this
imply that I will have a data throughput issue?
Rob

--000000000000a9b40405d79bae52
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I am wondering if there are any data rate rest=
rictions for using the Replay block on the E320.=C2=A0 I have a 4-port Repl=
ay block for simultaneously playing two streams to the 2-port Radio and cap=
turing two streams from the 2-port Radio.=C2=A0 If the master_clock_rate is=
 equal to the sample rate, does this imply that I will have a data throughp=
ut issue?</div><div>Rob</div></div>

--000000000000a9b40405d79bae52--

--===============5888972606701136664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5888972606701136664==--
