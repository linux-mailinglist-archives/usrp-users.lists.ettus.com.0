Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E74149C2E
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jan 2020 18:58:20 +0100 (CET)
Received: from [::1] (port=60484 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ivmAt-00048n-D9; Sun, 26 Jan 2020 12:58:19 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:36704)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <varban.metodiev@gmail.com>)
 id 1ivmAp-0003zZ-TY
 for usrp-users@lists.ettus.com; Sun, 26 Jan 2020 12:58:15 -0500
Received: by mail-ot1-f50.google.com with SMTP id g15so6323481otp.3
 for <usrp-users@lists.ettus.com>; Sun, 26 Jan 2020 09:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=Em153UBSTMhXebx9ySAFni/zKyBPt9+y7VO15zsoBjk=;
 b=KGpWANgue0wOINjFZCqvbxYWNSOs2Up+HyEQ4NAyQidwQozq4MxS718WuFRzqmq2yH
 TyqIYiHtEe1zMtMIvbvI7k7ttsbqoCqnb84Cj3Ugb6mLyJNapM9FJBN1SQY1wLj0sa+/
 gsNnaFmCIMSchkubmkH2awCdayZ8YpyVw2DiVnZ/uBsHKurqJeXQT+G/6bI0Cku8ZFcN
 4rFt05mqL+Wc0F2vfBzC6cmRoCfixhaYbrEP9JJ8yLANuMIp2hWoSDUt8QPWgeypVlYT
 CtZhf2O1JBg3uhDAfTNWywmJf5qcZigyy6fMpQrpk9FLC6fZb2IlZSfigf2np03Z78Cn
 WDPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=Em153UBSTMhXebx9ySAFni/zKyBPt9+y7VO15zsoBjk=;
 b=N9gOS4kgNGBfQlcL2vqUcqTDor2X/ucx6J6xmheMvCcOPzE2pzqk4jw7OPjbxLs2Uu
 kerxDxPgIwfcHLtgn2OT23DrRjD+Wguweyfb/llp+X0oxJzi+j8k0g2gxpjisUzcmFe4
 2QQNyFDMK7niN+ESQUH/fTWXygxqPSJa7qTUaadZo3WhLwCHzMSxOiTJtZcUvPrk5wET
 p02u8xoQ+y4OI2BSJP9BKzg6hHvTJCDfoylb6+8OWSZgBSEeyWof/M3Om9AuATimdZTA
 mQs7ELiIvtg6h7oE+krrZ02bclF8WByYKU83YbQE32xavuqFGSc88tk/hGVVxtE3Nrgp
 Kw4g==
X-Gm-Message-State: APjAAAXH+Yw6aHaYheIBya2fQHBWEBtWLef/md+/48KKGypRFg0KT740
 dVWCrvamK8pT96NooKZiy1WKrCKe2rbU58EYgKo=
X-Google-Smtp-Source: APXvYqyzsxOX3edbyOyk011LShDOBrP6rHcmNuC0nDMuPV8Elq72XK8U+9Eo1EIhYs3Z7GROEXuWSES16K6A0VIjUC8=
X-Received: by 2002:a9d:1ca3:: with SMTP id l35mr9785118ota.271.1580061455165; 
 Sun, 26 Jan 2020 09:57:35 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac9:5f87:0:0:0:0:0 with HTTP; Sun, 26 Jan 2020 09:57:34
 -0800 (PST)
In-Reply-To: <5E2DD0C5.6010205@gmail.com>
References: <CAKA0MUiUUxp2ko=4A9vM4u1D4tmGP4HKpeGbe5FCKi=_q9WVUw@mail.gmail.com>
 <5E2DD0C5.6010205@gmail.com>
Date: Sun, 26 Jan 2020 19:57:34 +0200
Message-ID: <CAKA0MUj-theDMW-ri=UxvTeinzS=xGUvNZra8QmcB6xAU=KfyQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Simultaneous TX and RX from the UHD
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Varban Metodiev via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Varban Metodiev <varban.metodiev@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6758706293037799913=="
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

--===============6758706293037799913==
Content-Type: multipart/alternative; boundary="000000000000c22d63059d0eb951"

--000000000000c22d63059d0eb951
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

Thanks a lot!

Best regards,
Varban

On Sunday, January 26, 2020, Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 01/26/2020 06:57 AM, Varban Metodiev via USRP-users wrote:
>
>> Dear USRP Community,
>>
>> I need to do a realistic loopback TX-RX communication (via a feeder and
>> attenuator) of my B205mini device.
>>
>> I took the examples from tx_samples_c.c and rx_samples_c.c, and tried
>> running them as two different POSIX threads. However, this way I could get
>> only transmission working, without any reception. When trying from GNU
>> Radio - both the source and sink modules work simultaneously without any
>> problem, meaning that I have done something really wrong in my approach...
>>
>> Could you please advise what is the correct structural pattern for
>> simultaneous RX and TX on a single USRP device via the UHD framework?
>>
>> Best regards,
>> Varban
>>
>> Varban:
>
> There's an example that does this:
>
> txrx_loopback_to_file
>
>
> You can look at the source code of that example to get some ideas of how
> to properly structure such a thing.
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c22d63059d0eb951
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,<div><br></div><div>Thanks a lot!</div><div><br></div><div>Best r=
egards,</div><div>Varban<br><br>On Sunday, January 26, 2020, Marcus D. Leec=
h via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 01/2=
6/2020 06:57 AM, Varban Metodiev via USRP-users wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Dear USRP Community,<br>
<br>
I need to do a realistic loopback TX-RX communication (via a feeder and att=
enuator) of my B205mini device.<br>
<br>
I took the examples from tx_samples_c.c and rx_samples_c.c, and tried runni=
ng them as two different POSIX threads. However, this way I could get only =
transmission working, without any reception. When trying from GNU Radio - b=
oth the source and sink modules work simultaneously without any problem, me=
aning that I have done something really wrong in my approach...<br>
<br>
Could you please advise what is the correct structural pattern for simultan=
eous RX and TX on a single USRP device via the UHD framework?<br>
<br>
Best regards,<br>
Varban<br>
<br>
</blockquote>
Varban:<br>
<br>
There&#39;s an example that does this:<br>
<br>
txrx_loopback_to_file<br>
<br>
<br>
You can look at the source code of that example to get some ideas of how to=
 properly structure such a thing.<br>
<br>
<br>
<br>
<br>
<br>
______________________________<wbr>_________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman<wbr>/listinfo/usrp-use=
rs_lists.<wbr>ettus.com</a><br>
</blockquote></div>

--000000000000c22d63059d0eb951--


--===============6758706293037799913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6758706293037799913==--

