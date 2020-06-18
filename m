Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C9C1FFF14
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jun 2020 01:58:22 +0200 (CEST)
Received: from [::1] (port=59064 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jm4QE-0004cN-P2; Thu, 18 Jun 2020 19:58:18 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:46673)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <colbyboyer@genxcomminc.com>)
 id 1jm4QB-0004Yb-3U
 for usrp-users@lists.ettus.com; Thu, 18 Jun 2020 19:58:15 -0400
Received: by mail-ot1-f52.google.com with SMTP id g7so5933155oti.13
 for <usrp-users@lists.ettus.com>; Thu, 18 Jun 2020 16:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=genxcomminc.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6BUuGbGnsJVXQK6YlaH7Bspowi+t7w6mjPy/qyfWQDk=;
 b=ASlUYr0jQKB1kFVXlDOyJNcgviH2j2fYDMyCTwzSVupeUKLz4jp3O893Hax22lzEJs
 4gfUl0psE9s3W+xiUaX/PyJQrou9KxPrmy+7tkkS94hkVVkO7V/ZStZ308vNljAZ7lqM
 fdmu9fUf5G5wwweLTPp6JejoLhqfQNslbDlQBoAQC1HScNh8ztSAXTyigTIwldRsjpvt
 vOzxluNvqEMkSxug+pvNN+kD/3ieYvIXYoVOX4dFyfmJiM3ytuOMMyMStLpBBB/8gxXt
 Pj/0zQz4r8kFHutydEyHcFVkOuVvDX7B5rcYNPVxec0mahuIkB65uzSK60np2jo4Pvxf
 hhIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6BUuGbGnsJVXQK6YlaH7Bspowi+t7w6mjPy/qyfWQDk=;
 b=ZRFBqqBOfx/Sdq8WIwyOQedlZj4s1A7LRJ9h+sB2apCBqu79tp4asA8zvdxuMn2rf9
 7ls6Xo2/U7TIBWtURXXASgJXCvjL7OrOuyQeyGsrkfNByMpoFz/ByWnl6zzT3NHPfrb/
 qTNN6efUJsTssY1Td1U9T1+PVdG8bxjHSo/43o9ZUsAtJMWBE/K1nu23bJpRlqoPXhyW
 y62NivN4Ve2AjxuYYtn4YgE5GmtbqYoHgTkVTAE3g1flIXg90mr4ZUMqqMdTVNZhpQCU
 wiIimm8qwTmux0fnz5ctx5iIXJEeTiWIYi66NwMB73BJFV352nN6dOPS2Nle/fOoCjGN
 5H3g==
X-Gm-Message-State: AOAM530d4eB46xRgGEVvEf60Wmgtj83vOOIm6tRs7IftaMl3b0dNcDcB
 sIm94YwMcLUcbfj/y5H5aTcX4ou/lBANpiJjbcCjPg==
X-Google-Smtp-Source: ABdhPJzChxC0MXLjDu+O9S4FepzZGBWIPUFrxzZNrj7bjY8vK2vPWCy21NDzyna3V5QLTnOZ83R9f45+isrS4ERifyg=
X-Received: by 2002:a9d:6103:: with SMTP id i3mr983367otj.354.1592524654299;
 Thu, 18 Jun 2020 16:57:34 -0700 (PDT)
MIME-Version: 1.0
References: <CACxOa3Zr_hPaEtu1_OGHfZn=7B_t1CWmYBYasVYVkrg4ZOaSpg@mail.gmail.com>
 <5EEB7DDA.2060403@gmail.com>
 <CACxOa3ZW4x+2+vXnpwvf34bUdx+F_rQ8pADBoyDB7WAHJnv1MA@mail.gmail.com>
 <5EEBEB8D.9060408@gmail.com>
In-Reply-To: <5EEBEB8D.9060408@gmail.com>
Date: Thu, 18 Jun 2020 18:57:23 -0500
Message-ID: <CACxOa3ZtKxvsXeGCER7BO2-YJRoKYLWScE6TasFKw-X5aFrRFg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] SW control of DB TX/RX DSA on N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Colby Boyer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Colby Boyer <colbyboyer@genxcomminc.com>
Content-Type: multipart/mixed; boundary="===============2380555516288584329=="
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

--===============2380555516288584329==
Content-Type: multipart/alternative; boundary="00000000000050deaa05a8648a8c"

--00000000000050deaa05a8648a8c
Content-Type: text/plain; charset="UTF-8"

Thank you Marcus.

On Thu, Jun 18, 2020 at 5:32 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 06/18/2020 06:28 PM, Colby Boyer wrote:
> > Hi Marcus,
> >
> > Thank you for your response and pointing me in the right direction.
> >
> > Yes, I see that flow now after tracing through UHD to a poke32
> > interface for twiddling the bits. Before I was mostly looking at the
> > Verilog FPGA code and how the registers were being mapped was not that
> > clear. It looks like the ATR idle register is being repurposed to
> > control the TX and RX DSAs.
> >
> > It seems that the DSA command is put out over the wire via the CHDR
> > interface with the following path for the N310. Host -> 10 GigE ->
> > N310 10GigE Switch -> RFNoC -> radio core. It does not interact with
> > MPM running on Linux, is that correct?
> >
> > Looking at the gain control for the AD9371, this looks to be
> > translated to an RPC call and sent to MPM that calls the mykonos
> > API/SPI transaction. Does that sound about correct?
> >
> > Thanks
> > Colby
> >
> It was my impression that in an MPM-based system, ALL the
> control-traffic goes through MPM.   I could be wrong, as I haven't
> studied that code
>    extensively.
>
> I'll see if I can get anyone from R&D to comment.
>
>
>
>

--00000000000050deaa05a8648a8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Marcus. <br></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 18, 2020 at 5:32 PM Marc=
us D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">On 06/18/2020 06:28 PM, Colby Boyer wrote:<br>
&gt; Hi Marcus,<br>
&gt;<br>
&gt; Thank you for your response and pointing me in the right direction.<br=
>
&gt;<br>
&gt; Yes, I see that flow now after tracing through UHD to a poke32 <br>
&gt; interface for twiddling the bits. Before I was mostly looking at the <=
br>
&gt; Verilog FPGA code and how the registers were being mapped was not that=
 <br>
&gt; clear. It looks like the ATR idle register is being repurposed to <br>
&gt; control the TX and RX DSAs.<br>
&gt;<br>
&gt; It seems that the DSA command is put out over the wire via the CHDR <b=
r>
&gt; interface with the following path for the N310. Host -&gt; 10 GigE -&g=
t; <br>
&gt; N310 10GigE Switch -&gt; RFNoC -&gt; radio core. It does not interact =
with <br>
&gt; MPM running on Linux, is that correct?<br>
&gt;<br>
&gt; Looking at the gain control for the AD9371, this looks to be <br>
&gt; translated to an RPC call and sent to MPM that calls the mykonos <br>
&gt; API/SPI transaction. Does that sound about correct?<br>
&gt;<br>
&gt; Thanks<br>
&gt; Colby<br>
&gt;<br>
It was my impression that in an MPM-based system, ALL the <br>
control-traffic goes through MPM.=C2=A0 =C2=A0I could be wrong, as I haven&=
#39;t <br>
studied that code<br>
=C2=A0 =C2=A0extensively.<br>
<br>
I&#39;ll see if I can get anyone from R&amp;D to comment.<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000050deaa05a8648a8c--


--===============2380555516288584329==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2380555516288584329==--

