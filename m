Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F376E69D945
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 04:28:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 79A1D383B89
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 22:28:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676950111; bh=+vRf4RVDfgvaR8gDleHwCT/vfKJnTmpycDuk6bNUqWg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=BN/SiYr7G2CUIi8VX1lEZr4DvFdbjNU4kpDR3fAr7Vh5gLFW83pKtvmLlZ9wP2T5U
	 mnRJ4EmtOu7wq4mHUF1ol1jkqPjdv+d8kaWcTmvG+9eFnm720EekOzXiFY0NGo4+GC
	 ct/EDoM417rWpqDs/3PX3jDNFaf4xwlt49HAh/7zpQdhqop00Mzzt/nweeZe6ILUl2
	 4IdX3GshNk6x1+LaSgE7AJBq2Yhidj1uTq6kyLavW+WcLg/mrSI9XjCU26IwC1G0lD
	 f4zV7bmyLEHvnAtiZswiOAjrHwvztk7RXMH0DShGZUqte+8QEptncChk0wwsi+rF3f
	 uc2nAdiRQGVgw==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 0BDEC380B09
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 22:27:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="U0sWAQFZ";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id s26so11789611edw.11
        for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 19:27:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=G4RejEU4Ecb94Kcw9hVV8Nc7JEts2zcR8C4I3NbP6R4=;
        b=U0sWAQFZwLkaiZDu7Le03ikWy1QCgmpgajNASjXIm7VzZ1u7RFvjgA+SwA4RkVbkTq
         ZuiurOq3q6tvZrDgy+WEs0rLCdxE+A1HOf56gVfXjLF+UPjIiyWz4xbzei5wtVNQcctM
         0bP4j7BEJojMwByWMft+grCwVG5kTVSlnSba/2B+BE/mUn9iInxm966ni+lwm7xtpJ2X
         AeEiF4/VgxgS4dF4Kw9qFeuKh4JeN6zEjAAlmfn2QbkhMKzOUZO+I5gdAKXiegeDzwHx
         eXIxIrLGqiGg8VO+p+OXh4KJ4ibhIWMfpcYkS0qNod7A2qKVOquVdLqApuYlg9QXZjXd
         ZkOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G4RejEU4Ecb94Kcw9hVV8Nc7JEts2zcR8C4I3NbP6R4=;
        b=VUtaMjqiuGY0CgWsFCaSU20kEfKxg5dNJ2NfX4hwxPGdRlsVTHFFPleKhmhbZ7Aybw
         RxMVgoZkZgTxnrA1RpgCflTszrWNBIiYPwq9g1KRLScVdkXDymqakoJ7RZYj0bAisdj1
         El7ko0weoUyLMDUiqTDSLM2/6DMkTW7mAYFkCbbHaiCU++XGlY5RXmV02rmYCfJSb3W6
         06awqloEuWVUk8E9OiPa/MpmAoY1W2Ir+O5xJdT3rXzpb9/MWHYNgOm/NBVoUsw1xhfp
         oYYWgGFf6luv2vSrZd6ALkDKQ5tE/iv8COrd1eJuCrz/y+Eqmg9gj8iPMZvqp7w7Nw0T
         xXXQ==
X-Gm-Message-State: AO0yUKX+FaeAOHX++0Ef7dkzqm6VnRtcycNU2aGvMY51abF14NjwW7Cd
	mQpoKuPFfgmXEQPtaOvLL3/aPJz/Hyc4PwcU25Rng/HqHp9SGyCG
X-Google-Smtp-Source: AK7set+4oTBDBK2DDv/IOVcaroq2ZWcAkd+jIyY9rxmEUaW+uX41nTqZ+2n5p7fF3UoPTpOGywkYJOkCMqdEe+gpef4=
X-Received: by 2002:a17:907:d94:b0:8b1:28c1:6b9c with SMTP id
 go20-20020a1709070d9400b008b128c16b9cmr11569860ejc.4.1676950072778; Mon, 20
 Feb 2023 19:27:52 -0800 (PST)
MIME-Version: 1.0
References: <6grmw7ZRu7PqJguSjEXbMV75d836HD9x2CcemjDe4@lists.ettus.com>
In-Reply-To: <6grmw7ZRu7PqJguSjEXbMV75d836HD9x2CcemjDe4@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 20 Feb 2023 21:27:34 -0600
Message-ID: <CAFche=jHc9KOM6sXv6by1bSmA3vKF7-qzQ07RTg0SQEVM8S1rw@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: UEGTB5X7XYNRKRVHPOERWIQSEOHNXQCH
X-Message-ID-Hash: UEGTB5X7XYNRKRVHPOERWIQSEOHNXQCH
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: benchmark_rate throws error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UEGTB5X7XYNRKRVHPOERWIQSEOHNXQCH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1364689136643227279=="

--===============1364689136643227279==
Content-Type: multipart/alternative; boundary="00000000000064f06f05f52d5d6d"

--00000000000064f06f05f52d5d6d
Content-Type: text/plain; charset="UTF-8"

Hi Joe,

The error you're getting basically means it can't communicate with the FPGA
on the N320. It's sending a packet to the device, but it's not getting the
response packet it expects. So it could be a network configuration issue, a
cabling issue, maybe a firewall issue, or something else that's messing up
the packets.

Double check the cabling and make sure you have the ports connected
correctly. For example, connect the host computer port with IP 192.168.10.1
to the port on the device configured to 192.168.10.2 (the first port), or
port 192.168.20.1 connected to 192.168.20.2 (the second port). Sometimes
cables get swapped or port IP addresses get misconfigured and that can
cause issues like this.

When you specify the "addr" argument, you're telling the software which
port to use to do the initialization that's failing, so make sure that's
correct and matches the configuration and cabling.

Wade

On Mon, Feb 20, 2023 at 11:57 AM <jmaloyan@umass.edu> wrote:

> With the HG image, things seem to be working fine. I can benchmark, and i
> can collect samples at not only the full rate(25e6 MS/S), but at a higher
> rate than the XG image, which is strange.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000064f06f05f52d5d6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Joe,<div><br></div><div>The error you&#39;re getting ba=
sically means it can&#39;t communicate with the FPGA on the N320. It&#39;s =
sending a packet to the device, but it&#39;s not getting the response packe=
t it expects. So it could be a network configuration issue, a cabling issue=
, maybe a firewall issue, or something else that&#39;s messing up the packe=
ts.<div><br></div><div>Double check the cabling and make sure you have the =
ports connected correctly. For example, connect the host computer port with=
 IP 192.168.10.1 to the port on the device configured to 192.168.10.2 (the =
first port), or port 192.168.20.1 connected to 192.168.20.2 (the second por=
t). Sometimes cables get swapped or port IP addresses get misconfigured and=
 that can cause issues like this.</div><div><br></div><div>When you specify=
 the &quot;addr&quot; argument, you&#39;re telling the software which port =
to use to do the initialization that&#39;s failing, so make sure that&#39;s=
 correct and matches the configuration and cabling.</div><div><br></div><di=
v>Wade</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Mon, Feb 20, 2023 at 11:57 AM &lt;<a href=3D"mailto:jm=
aloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><p>With the HG image, things seem to be=
 working fine. I can benchmark, and i can collect samples at not only the f=
ull rate(25e6 MS/S), but at a higher rate than the XG image, which is stran=
ge. </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000064f06f05f52d5d6d--

--===============1364689136643227279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1364689136643227279==--
