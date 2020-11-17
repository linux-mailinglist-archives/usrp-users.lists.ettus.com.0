Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 587802B6858
	for <lists+usrp-users@lfdr.de>; Tue, 17 Nov 2020 16:12:09 +0100 (CET)
Received: from [::1] (port=46230 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kf2eL-0007Wq-Ti; Tue, 17 Nov 2020 10:12:05 -0500
Received: from mail-oi1-f181.google.com ([209.85.167.181]:35676)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kf2eI-0007S9-C8
 for usrp-users@lists.ettus.com; Tue, 17 Nov 2020 10:12:02 -0500
Received: by mail-oi1-f181.google.com with SMTP id c80so22903772oib.2
 for <usrp-users@lists.ettus.com>; Tue, 17 Nov 2020 07:11:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LT3k8TNCAedrw/5tuewnrz/Hx5TZK9WlC1Bn9q+rC3M=;
 b=C+QXbB9yjopzil9p++weDlm0aMTpotigqTaWX9vLLKgf1LJSTYmBcpgi4V6gylXqm9
 2AotEvSQtpTU4zQi2ewzbOehuzLpd/Cw4dIBp3cfOsBj4KR2fts6Y3/qKFYoqv65Njug
 JuKGb3+KMiZJ+A9JB7UKU/hBzk51Y9HDD80sblD62i2meF+R6LBDRfmhbK6Iyo86pZEU
 WYg/uayasiouf8N4JG1HIfTb4FvOkIkF66xx2VPfwapX/1UsLSh3QlN8wv0WqDVduLsB
 nymjznrPDteDcmNnnkVb0nOHeiAmD/UqWeu4uO/Pvx9sr9XFKcq+Q2B6KLrOtVzM6fjL
 FPTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LT3k8TNCAedrw/5tuewnrz/Hx5TZK9WlC1Bn9q+rC3M=;
 b=J5b9H4T8E/JfO3ixH55kBsQWZcvEzHcJrrl29ML99jLBvZD7fN7WCV5KvFJnEFIuS7
 VyXVAq2FmPWnOufQUNypIvEk6PnsyUVTAriKx2OLsxftoIy8sG64GKLADdDHC14+UcjG
 WDwLUqz/G5O5VocP8rFGP4IprcenzR3gP9Fsz38i6o2MrzIxrMvOirEA64f1CoFoJjOY
 1SAjT8LMJcsy2RB9nh77oxlaHmIl5B/jeU68DyyZ1tdt7Q0T0xgGZcDewSI1PzRDF8Vl
 zbvXi8+ackdl3MUwVsGQGXRr8TGbmQC8rc7XlkqYlHe0jylKEo9zHUkpcU3HTHtQ2pwY
 gBdA==
X-Gm-Message-State: AOAM530dBU+eqxSQRm92fYIV5McLZKa8QQ2KimU2hv/bbvZgYYq26sP6
 Me6Fk80l0D88uUPgpI7JR2A4beKBAF/0reJlacPoVsSNt2F7tg==
X-Google-Smtp-Source: ABdhPJzXbD67OjYGNLGiV5BeBHFcSrFd9dEknXzuH6OlAcaww0joThruayg5SrsplE+RFxzVRmu6/9DpNMdwjZtP2zI=
X-Received: by 2002:aca:5c82:: with SMTP id q124mr2661845oib.33.1605625881198; 
 Tue, 17 Nov 2020 07:11:21 -0800 (PST)
MIME-Version: 1.0
References: <CABfZwcf=W+i1ZO6LO+TrYh386cxy--GtKgggPO3__DQhf8pF0g@mail.gmail.com>
In-Reply-To: <CABfZwcf=W+i1ZO6LO+TrYh386cxy--GtKgggPO3__DQhf8pF0g@mail.gmail.com>
Date: Tue, 17 Nov 2020 09:11:10 -0600
Message-ID: <CAB__hTRA5KEPj4t6uBRv_Wx=+LwpGadC65rfjvQU24sMFE=5sA@mail.gmail.com>
To: Mikio Fukushima <mikio@dolphinsystem.jp>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] How can I get an error by send method?
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5543321726249120790=="
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

--===============5543321726249120790==
Content-Type: multipart/alternative; boundary="0000000000004accea05b44ee8ed"

--0000000000004accea05b44ee8ed
Content-Type: text/plain; charset="UTF-8"

Hi Mikio,
Look at the benchmark_rate.cpp example and in particular
the benchmark_tx_rate_async_helper() function.
Rob

On Tue, Nov 17, 2020 at 2:12 AM Mikio Fukushima via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi.
>
> rx_stream->recv method returns an error code. but tx_stream->send method
> doesn't return an error code.
> I want to detect an underflow. How can I get an error code by send method?
>
> Regards,
>
> Mikio Fukushima
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004accea05b44ee8ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Mikio,<div>Look at the benchmark_rate.cpp example and i=
n particular the=C2=A0benchmark_tx_rate_async_helper() function.</div><div>=
Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Tue, Nov 17, 2020 at 2:12 AM Mikio Fukushima via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div>Hi.</div><div><br></div>rx_stream-&gt;recv method retur=
ns an error code. but tx_stream-&gt;send method doesn&#39;t return an error=
 code.<br>

I want to detect an underflow.

How can I get an error code by send method?<br><div><br></div><div>Regards,=
</div><div><br></div><div>Mikio Fukushima<br><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000004accea05b44ee8ed--


--===============5543321726249120790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5543321726249120790==--

