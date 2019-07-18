Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDEB6D6D5
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jul 2019 00:34:02 +0200 (CEST)
Received: from [::1] (port=40978 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoEyK-0002Gr-Go; Thu, 18 Jul 2019 18:33:56 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:40309)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1hoEyH-0002BS-82
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 18:33:53 -0400
Received: by mail-io1-f43.google.com with SMTP id h6so54348924iom.7
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 15:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XAywVPmdtkmO4+CXqtDvzWd8AAVUTeZBY9/zET6s9Z8=;
 b=PAuGwsk8IYfE9qbMnblKivzG1LD/OvQnuQ5Q7iFVNH/2agK37DTAZAIRcj5aj6MqFY
 hFKJ1RYma7ad8uh/2r9gnTwnjme7Ni5Rmtf8z53Zdjr7hPzVjtz/NNcz14mdVOVvdJx6
 RM9BQm0LCE8eEy2auT0noCZc/3duKg7TzwmgSvsRbBax0GcPnV0n/kHkwuXzvKnc24YW
 6IGx8bbgNj082fLiDFeBlc1EXidM6QTiSv/sQnv7ndNrEgzdVOp43kQmTf0v52jSHoJk
 V+9Etol+4ZfoxCpv+DOnLePwNG+cqEudcoFx3TyUtWda8/hXXmNir+E8ycYCE4Ds1mcH
 1iCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XAywVPmdtkmO4+CXqtDvzWd8AAVUTeZBY9/zET6s9Z8=;
 b=gk6fTtZG8zDvg5BdTQvZrcOFtlxEmX4vsSIKLI7ggnKhiz+GM7YNc9iID3SNntFr+a
 xtbBkFpxEtkacE75ATa99pfJGfBpn+xTWlOtzoYnucH0hHoh8a3lvxnw045+UlwR4mux
 yCFqP3xI1Z3xo/tFpnmBanHb2PvGoaZ2/Bd0W1G3uCE+lR98pvMceMe8n6/n2lkzeILU
 XwfOBvC7v6Bg1hn9rhq1c+XTCY28RX+dN2KlmH8Ywqa6NdgSZOkEawq/rbqDVEXb6SJ+
 8jQiTJprIZP3qTznIt4y75vzpWXOX71nAcuzVDTLMNjM36p/PlfOp+D0QJWwhP8OqDuU
 iMaQ==
X-Gm-Message-State: APjAAAXeRkgadsf5yKSj4E6YhqVu/6BxYwOe1257YxDpnmwYvipLsda3
 mMqm4X7exfa/FFvSUBpeH6yAG8UjWn/GYR9FcWg=
X-Google-Smtp-Source: APXvYqwdNpRp4VQlbTLts2200A7bUfi7geAOYbdbVB8CVboJ70BPgtDgKEiHkgJeulTRiCMw8HwIZlTetci/M4YkVS8=
X-Received: by 2002:a02:242a:: with SMTP id f42mr51042898jaa.42.1563489192421; 
 Thu, 18 Jul 2019 15:33:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAFB_ak+rtm3xVuF9GFkZ09qhUYLP1G1mzhAxDxeV7d-wR1LNmw@mail.gmail.com>
 <CAKJyDkKCRujVNv99RW594t7embavu4J=rAgu=vsOgkSHzg9Gyw@mail.gmail.com>
 <CAKJyDkLmZY-yw7QWMzg8oWRNzU4scuqkJC0Z9ErfxRKjKf+UCw@mail.gmail.com>
 <CAFB_ak+Nm5+VBi8F=UwtgerchzRGrXjTZYgWWA3Z45a+Nj=uPA@mail.gmail.com>
 <CAFB_akKiC_jtf0mMZK7Dk2JaJBi1BPTvfWM=4M=POWOfxmKhdw@mail.gmail.com>
In-Reply-To: <CAFB_akKiC_jtf0mMZK7Dk2JaJBi1BPTvfWM=4M=POWOfxmKhdw@mail.gmail.com>
Date: Thu, 18 Jul 2019 15:33:01 -0700
Message-ID: <CAKJyDk+4kYDLWypDhaPzEGhkjJLKNK0sEscT5dRSXCTYWU7mQA@mail.gmail.com>
To: Taylor Eisman <tayloreisman2012@gmail.com>
Subject: Re: [USRP-users] Fwd: Ettus X300 -- NO TX/RX, RX2 Avaliability
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2137506668965269090=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2137506668965269090==
Content-Type: multipart/alternative; boundary="000000000000ecc3bc058dfc31db"

--000000000000ecc3bc058dfc31db
Content-Type: text/plain; charset="UTF-8"

Sorry, I misunderstood your question-- did you set up the mode in UHD
correctly?
http://files.ettus.com/manual/page_dboards.html

Also, you might want to double-check the SMA connections just in case.
Not sure if the subdev spec has changed in the last year.  Someone who
knows the UHD codebase better than I do would have to answer that question.



On Thu, Jul 18, 2019 at 3:26 PM Taylor Eisman via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Robin,
>
> We've set it up so that the RX Daughterboard connects to RX2 and the TX
> Daughterboard connects to TX/RX. Previously, we've been able to use these
> ports, but now it no longer identifies that we even have these ports. I
> don't think the issue is the Daughterboard as this worked less than a year
> ago.
>
> Thanks,
>
> Taylor
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ecc3bc058dfc31db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry, I misunderstood your question-- did you set up the =
mode in UHD correctly?<div><a href=3D"http://files.ettus.com/manual/page_db=
oards.html">http://files.ettus.com/manual/page_dboards.html</a><br></div><d=
iv><br></div><div>Also, you might want to double-check the SMA connections =
just in case.</div><div>Not sure if the subdev spec has changed in the last=
 year.=C2=A0 Someone who knows the UHD codebase better than I do would have=
 to answer that question.<br></div><div><br></div><div><br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Ju=
l 18, 2019 at 3:26 PM Taylor Eisman via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div d=
ir=3D"ltr"><table class=3D"gmail-m_4732337847213854491gmail-cf gmail-m_4732=
337847213854491gmail-gJ" cellpadding=3D"0"><tbody><tr class=3D"gmail-m_4732=
337847213854491gmail-acZ"><td class=3D"gmail-m_4732337847213854491gmail-gF =
gmail-m_4732337847213854491gmail-gK"><table class=3D"gmail-m_47323378472138=
54491gmail-cf gmail-m_4732337847213854491gmail-ix" cellpadding=3D"0"><tbody=
><tr><td class=3D"gmail-m_4732337847213854491gmail-c2"><div>Robin, <br></di=
v><div><br></div><div>We&#39;ve set it up so that the RX Daughterboard conn=
ects to RX2 and=20
the TX Daughterboard connects to TX/RX. Previously, we&#39;ve been able to=
=20
use these ports, but now it no longer identifies that we even have these
 ports. I don&#39;t think the issue is the Daughterboard as this worked les=
s
 than a year ago.<br><br></div><div>Thanks,<br><br></div><div>Taylor</div><=
/td></tr></tbody></table></td><td class=3D"gmail-m_4732337847213854491gmail=
-gH gmail-m_4732337847213854491gmail-bAk"><br></td></tr></tbody></table></d=
iv></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ecc3bc058dfc31db--


--===============2137506668965269090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2137506668965269090==--

