Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E6F5EC58A
	for <lists+usrp-users@lfdr.de>; Tue, 27 Sep 2022 16:10:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 022DD3841C3
	for <lists+usrp-users@lfdr.de>; Tue, 27 Sep 2022 10:10:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664287813; bh=wRoj4ngUNDX2SM7Ym9ErE8N0/SGdLf4K9tjkYqIMMMg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=aSHU2qH2JWRESu0qqnpztd81JtGsQM7EbDsmasV7QBoFIc6AC931p1tB/Xcd0rrd+
	 MRfvYYqKDTW3h7LdGqXfbpGseOPdCpo6FwWp/oC22209soUHKh1fUi2JZDZwjiK28/
	 n9Q+zGqs+sRd0hDNU0ExzUrtFk3imCuM+mI8N6vMahYY2O3oU4Q31hXf37yQM6exyR
	 p4yVErF8eqY6MvtdscscGqicudQnilKlNLefNTBvgFg7UI/90MtyIah3W61a3BFDj9
	 IgQWJ+VgzZdki0Q8F/46THh4ivbOM57FRuPPt49fCqQqwiTA6967wUJUsswZ2sH7Mq
	 rGnKCQR7d6Rrw==
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	by mm2.emwd.com (Postfix) with ESMTPS id A721B38418C
	for <usrp-users@lists.ettus.com>; Tue, 27 Sep 2022 10:09:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="G0nM0kpC";
	dkim-atps=neutral
Received: by mail-oi1-f173.google.com with SMTP id w13so120854oiw.8
        for <usrp-users@lists.ettus.com>; Tue, 27 Sep 2022 07:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=G4NINRHVkFH8ba7TSO5HZPkQl5Y+9vpii+iWjbxoPqk=;
        b=G0nM0kpCJMQ12s6FK6+Bko8zHSWX4ogj+okt2E/yv3jWzpyhTjdQfc+Lf0vSHSEOop
         am4cCrfS4CqbVzt0xJ5QHUS00hauGsfodHN0o+zB0My6ESYE+FJE9M9WwZqmmMN48nXL
         dvnF3MdUdxA31bWrmX1IsXNZhbiBgt6H9xa/LjYRCqBwrP6R1KHEBslqqY7Ql5jZxPDL
         LpRvrQrHONgzU/iuVdngsMiSeOdac7cM4xG8jBjrnVb5+XeKt8GYsD+tq+2Oo/351vpA
         Jo9ciph7CqiBTsy0DYeGfp7QymXQAYQrJTM6lZMRxRADaOouQqiCy5frcubQfp29J9CX
         ihUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=G4NINRHVkFH8ba7TSO5HZPkQl5Y+9vpii+iWjbxoPqk=;
        b=Z9FtB665HSgSPv6SYr9g6oFfOgrk+9QaBHGMZ7xs1f1oUi2Mx+GugJklRCb5gBYxBf
         +pAtZlN2y/wWyuMNoImKaZvogLykRwOqP6OJnIUAxo0HNBUe2FXo9K1dCjxu0dddf1ZH
         1HdTk7uM0vGevjvvfCAMEmKc8JWmuXgCoKx74j3eiHUpNn1LNkQ9uLyHg7TiO6BNSvto
         4TUABPfGkPs6NNEkKGuGf5EiSk96P1U8GeTtZlnuNbVu8lB7iaKMf+rMZAqPZ7eJ+9by
         w9LOPTb1xcfaO92N0cS6AE79hshoL4M44QdijVOXkPYV7CqCD8zPHHB8sYLphF+A1A+e
         SJZg==
X-Gm-Message-State: ACrzQf2hILa6XPGAiOUtITqgb5y6fII24f54PkEBBZbIQ2hIHngWodkN
	9o1DlmDMKWg1ogWouEy/WaVgaMV+2R4P1+Dp5vw=
X-Google-Smtp-Source: AMsMyM5T0/+5ASD/QonWJGi0MU6zdDVdHDSF+7KPKu794vk1hb77H8DsBHJ0QI0LrsQHY0DokLwVXORWf/Ihxb/abOk=
X-Received: by 2002:a05:6808:308f:b0:350:55d6:ebbb with SMTP id
 bl15-20020a056808308f00b0035055d6ebbbmr1881790oib.168.1664287739746; Tue, 27
 Sep 2022 07:08:59 -0700 (PDT)
MIME-Version: 1.0
References: <bFBy3jWM1DzU7ow6eKGnqIAMT4zW4he9qBkwhU9fro@lists.ettus.com>
In-Reply-To: <bFBy3jWM1DzU7ow6eKGnqIAMT4zW4he9qBkwhU9fro@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 27 Sep 2022 10:08:48 -0400
Message-ID: <CAEXYVK7f-nyQXPDo6WkVm3SCYM2EvzNVuDeQ4+k-7wqc7Oa=bQ@mail.gmail.com>
To: adri96roll@gmail.com
Message-ID-Hash: NXVYNTU267T5ZBPJRYCATZ3KRX6XEMNL
X-Message-ID-Hash: NXVYNTU267T5ZBPJRYCATZ3KRX6XEMNL
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reset Timing Violation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NXVYNTU267T5ZBPJRYCATZ3KRX6XEMNL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2172104607804938802=="

--===============2172104607804938802==
Content-Type: multipart/alternative; boundary="000000000000881e7405e9a92fba"

--000000000000881e7405e9a92fba
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 27, 2022 at 7:21 AM <adri96roll@gmail.com> wrote:

> Hi every one!
>
>
> I am facing some problems with reset timing violations. This is is one for
> example, and i have a fews. I tried to instantiate the reset signal but it
> didn work. I don know how to fix it. On the other side, i have seen a reset
> generation in a noc shell and i was wondering if i have to generate a new
> one from a previous one.
>
I can't see much other than the names of the signals and the negative
slack, but the hierarchy seems to indicate it's part of a synchronizer
that's been double flopped, so maybe there should be a false path
associated with it in your constraints?

Brian

--000000000000881e7405e9a92fba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Sep 27, 2022 at 7:21 AM &lt;<a hr=
ef=3D"mailto:adri96roll@gmail.com">adri96roll@gmail.com</a>&gt; wrote:<br><=
/div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><p>Hi every one!</p><p><br></p><p>I am facing some problems with res=
et timing violations. This is is one for example, and i have a fews. I trie=
d to instantiate the reset signal but it didn work. I don know how to fix i=
t. On the other side, i have seen a reset generation in a noc shell and i w=
as wondering if i have to generate a new one from a previous one.</p></bloc=
kquote><div>I can&#39;t see much other than the names of the signals and th=
e negative slack, but the hierarchy seems to indicate it&#39;s part of a sy=
nchronizer that&#39;s been double flopped, so maybe there should be a false=
 path associated with it in your constraints?</div><div><br></div><div>Bria=
n</div></div></div>

--000000000000881e7405e9a92fba--

--===============2172104607804938802==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2172104607804938802==--
