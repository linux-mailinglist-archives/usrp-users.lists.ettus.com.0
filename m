Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6A460E4FC
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 17:46:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86719383EB7
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 11:46:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666799171; bh=fSEaRUISoq34gZtoP77ITgA5TIkyul1v3kmbj7rDY6U=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=NdpK93Yg+EGXHGouP9P+fQsagK4YP1DTXMvYhDjviwK5G6CELcbNjygb1Bk0u9bmO
	 16MMml4mglzZstvz5CrAY82sgC/ZD0OwovJh5IfOH78m+IucDliUy+7vX6nB7xGjm0
	 IolQJ3pLgBjx1bgOfamV++XK7dfEqqNRKQu08ARrtNVTdvyuBVbSOFkQBxEs75f2mi
	 6oJ01PDCv5EnP0gFGmA2DslvmBtK4axVQrStzv7ab8vJJU75LeSuqwobu1/56KOOyd
	 I9A1k7y0z+7XQmNGoM5TYLU2amZ+UXSmEbLUjMdwYTeaKwx8v4fkpy6c6Bz7besMcA
	 KTeabUbVznsZQ==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 0D6EF383D90
	for <usrp-users@lists.ettus.com>; Wed, 26 Oct 2022 11:45:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="Xb4W1LDq";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id t15so7496877edd.4
        for <usrp-users@lists.ettus.com>; Wed, 26 Oct 2022 08:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i6+3GrslGQOwlu7/q87VC672EI2FvL8fR8ENt3jVK3w=;
        b=Xb4W1LDqYwHsLpQvJzkTzx++bdSt/dcN1KBoNcaFZ+zEt7WCOxSu3tKyIc3MkOV9a1
         kzcc7VuBhGs8nYnCkgFOJ0KI5HGLKW+7KkM8PIQ0r4DNV2eEAEK2tseUg09aJgRXZGwJ
         MR/D4Nzq7LYbzsiimuomqoLPW5RGR1MKYS13hvPYQW5MesIqFgWnH1gqlrgsDyTgsxV3
         hpMx1GJ2bp0sFIL1DowRJc8wkFhukHBnH+nR0+wz4L0vcFvf5/CUl7FAYTw8A9Edwn6O
         krIhWg6ex1od35QOCnw8gXfq8kZesvcz7D6nbiO7RRvCjMZBPkjShCfsEslhhBsHeyqj
         8e3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i6+3GrslGQOwlu7/q87VC672EI2FvL8fR8ENt3jVK3w=;
        b=DdpU09xMgJtEmRrfRdjqwTp4TIAH+yo1QrConkmQ5k+F8PgfvAydRgSuJp1zeSHPJ4
         1NbaYw7wR+FKClVsdYmLAk/P4zi6ER3eGrHT67K4y5KbsbQcwcIxDQjGpN2EYq0dTiCg
         aQcivOFoUsN6sC0Efsr4IfV8gyB96WJOOVM9+qMuxoiaKcLofqexpFAwBiEDthmGjQQM
         lz5JBd1Q1Er7BE2dilRJzRPp8MtsGC1MClk5syH6HCjAvODa8clHC7njQ33/eQA8VQ33
         ZHtIMrh2vI4w2S4uiYuIwXjRcDRmazj12+NKfzCfl8E9bhQwfXah2STLHoO/p1CA3Tz4
         y7Rg==
X-Gm-Message-State: ACrzQf30Rvln3QYAmPO87Hc155TsJ5wcIk+82ghYtWESAAARRLG41kFm
	mcnlVPf84nycq6HVhrVAymAgmgwnZTqt76ncb7CW3AWS
X-Google-Smtp-Source: AMsMyM7uFa3LChizK3XQdMS2ARXsiXMbzQykF6DNiDr9kkon4hYPaYl8ValIJdIdPywGCdQBi3GHemuYD1pWQnlHzgE=
X-Received: by 2002:a05:6402:40d0:b0:462:7b99:d424 with SMTP id
 z16-20020a05640240d000b004627b99d424mr1319353edb.62.1666799099808; Wed, 26
 Oct 2022 08:44:59 -0700 (PDT)
MIME-Version: 1.0
References: <2liEigXaBpkvDLiVbfMRGNKQSjPRKEV388L7RkzQ@lists.ettus.com>
In-Reply-To: <2liEigXaBpkvDLiVbfMRGNKQSjPRKEV388L7RkzQ@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 26 Oct 2022 10:44:43 -0500
Message-ID: <CAFche=jGh4jqqr2RDubCu6t=LLfZjenCDTQSpGocNkwqgJp_bw@mail.gmail.com>
To: adri96roll@gmail.com
Message-ID-Hash: 4TSSOMZ737WWCD4HVBZUSAY5D2YYAC2P
X-Message-ID-Hash: 4TSSOMZ737WWCD4HVBZUSAY5D2YYAC2P
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Simulation after synthesis or implementation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4TSSOMZ737WWCD4HVBZUSAY5D2YYAC2P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5298467007366634187=="

--===============5298467007366634187==
Content-Type: multipart/alternative; boundary="000000000000419ee105ebf1e863"

--000000000000419ee105ebf1e863
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Adri=C3=A1n,

It is possible to do a post-synthesis simulation, but that's an advanced
topic and I wouldn't recommend it unless you suspect you've found a bug in
Vivado synthesis. There's no way to do a post-implementation simulation
that I know of.

If you want to do a normal simulation and write your own HDL testbench
(this standard best practice and is what I recommend), you can take a look
at:

https://files.ettus.com/manual/md_usrp3_simulation.html

There are also lots of examples of simulations in the UHD repo. Search for
files named *_tb.sv for examples.

Another option for debugging is to use an ILA (Integrated Logic Analyzer).
This is usually a last resort, when you have written a testbench but still
haven't found any issues. For instructions, see:

https://kb.ettus.com/Debugging_FPGA_images

Wade

On Wed, Oct 26, 2022 at 5:54 AM <adri96roll@gmail.com> wrote:

> Hi everyone,
>
>
> I was wondering if it is possible to make a simulation,, and how, after
> sythesis or implementation because i am not getting the results that i wa=
s
> expecting and i don=C2=B4t know why.
>
>
> Thanks in advance.
>
>
> Adri=C3=A1n Campos
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000419ee105ebf1e863
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi=20
Adri=C3=A1n,</div><div><br></div><div>It is possible to do a post-synthesis=
 simulation, but that&#39;s an advanced topic and I wouldn&#39;t recommend =
it unless you suspect you&#39;ve found a bug in Vivado synthesis. There&#39=
;s no way to do a post-implementation simulation that I know of. <br></div>=
<div><br></div><div>If you want to do a normal simulation and write your ow=
n HDL testbench (this standard best practice and is what I recommend), you =
can take a look at:</div><div><br></div><div><a href=3D"https://files.ettus=
.com/manual/md_usrp3_simulation.html">https://files.ettus.com/manual/md_usr=
p3_simulation.html</a></div><div><br></div><div>There are also lots of exam=
ples of simulations in the UHD repo. Search for files named *_<a href=3D"ht=
tp://tb.sv">tb.sv</a> for examples.</div><div><br></div><div>Another option=
 for debugging is to use an ILA (Integrated Logic Analyzer). This is usuall=
y a last resort, when you have written a testbench but still haven&#39;t fo=
und any issues. For instructions, see:<br></div><div><br></div><div><a href=
=3D"https://kb.ettus.com/Debugging_FPGA_images">https://kb.ettus.com/Debugg=
ing_FPGA_images</a></div><div><br></div><div>Wade <br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 26,=
 2022 at 5:54 AM &lt;<a href=3D"mailto:adri96roll@gmail.com">adri96roll@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><p>Hi everyone,</p><p><br></p><p>I was wondering if it is possible to=
 make a simulation,, and how, after sythesis or implementation because i am=
 not getting the results that i was expecting and i don=C2=B4t know why.</p=
><p><br></p><p>Thanks in advance.</p><p><br></p><p>Adri=C3=A1n Campos</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000419ee105ebf1e863--

--===============5298467007366634187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5298467007366634187==--
