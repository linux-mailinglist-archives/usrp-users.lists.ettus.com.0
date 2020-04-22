Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA07A1B5084
	for <lists+usrp-users@lfdr.de>; Thu, 23 Apr 2020 00:50:10 +0200 (CEST)
Received: from [::1] (port=52130 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jROC1-0004Bv-CM; Wed, 22 Apr 2020 18:50:09 -0400
Received: from mail-oo1-f52.google.com ([209.85.161.52]:33540)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jROBx-00044g-Tp
 for usrp-users@lists.ettus.com; Wed, 22 Apr 2020 18:50:05 -0400
Received: by mail-oo1-f52.google.com with SMTP id b17so905280ooa.0
 for <usrp-users@lists.ettus.com>; Wed, 22 Apr 2020 15:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V2UccC5x/1fjGGUWd9mJbk4arpxFBnc/xMdGJuPrK/Q=;
 b=AzV1zvcHXCzV9DxFc1ThPIiwd45asqt5wjudsROlfsxle2N/YXsCTZq2viNg1hrx6f
 W9hywNeG5RK7y2JXByISHqL8s6KhX2f42ocFXxHfUSktCUMj4m7GA+1bsrd/WuYX4u0D
 eVaR7zmUqn0IzcwQMC4tp3iHn7k0CU7OpXUh/V53AerF5w5s/OKIIrgL5lx5+xH+klNk
 pvZbMdbHJQmWgwgODFJfiI9w9MUXwT3wZuq8Dh7GqKFxq/V1Zq/SJz5/mfJcjE374CW/
 wqWu3AjRNehADXplv71lNiY9eGBbtuReRzbh0gCKnmYtWsgC7PMDrI11I2TD3XUlukxV
 mFHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V2UccC5x/1fjGGUWd9mJbk4arpxFBnc/xMdGJuPrK/Q=;
 b=q8rilGVhzwvjsxXj4FcD1BU5b5q7LY49+hKv5F6l4RoevCYp9WNhOr65mpDY4MgB6Z
 3VkSAavcqygS/LywbW+cjMNgXYUR4kuzN3h1T1vzldNAOFUkwzozdFZBnIUc9L0PnbVK
 0oPRAFyHXnIVKGq8NQL2a22+i6FzkUpbYPZo+Z2h6GA/v7KpT6Rj+W64yCVMIJlk7VrM
 cmi23CYVqwJj8+VvKlHZAVKEdzPZfUi+QYnI2HcyQlLHOioetTvlzWwuinqGImGz68+B
 alNFkp8aWcTfMbN1ZD7PpK5FzmWsj3x24npO1sm5mLfjsHumxRGVV7TumdwrbDtmEvm5
 hgCA==
X-Gm-Message-State: AGi0Puaqf8r+DZLAoM5QnZbbfpCRSJradCh7PIWev5rxR8F5FNDAOeyU
 gMTtSsC1VLSibahj6WXMXUpeC8OX3mlYPmBOdpE=
X-Google-Smtp-Source: APiQypIDpDsbdJ6ZTJxVv0AqB12LEXIqOa7u2xpTS+5GGANkMBSj4eW90mWc6eyYAkjhkwikL1GJvpSonpTkMbTCmME=
X-Received: by 2002:a4a:9813:: with SMTP id y19mr958184ooi.56.1587595765084;
 Wed, 22 Apr 2020 15:49:25 -0700 (PDT)
MIME-Version: 1.0
References: <BM1PR01MB3348D0FEC4BEAA5F7A79200C88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAEXYVK5Ts2mewxrSw40puiLtHv1+w5R8fi=d+7LD2gcxvn-9Cw@mail.gmail.com>
 <BM1PR01MB334827C32F91A512A6786A1B88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB334827C32F91A512A6786A1B88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
Date: Wed, 22 Apr 2020 18:49:14 -0400
Message-ID: <CAEXYVK7rCxr7QB=qQOL1omLd3AdPcjQvbnWoFmZ=bYGGtWGeHg@mail.gmail.com>
To: Snehasish Kar <snehasish.cse@live.com>
Subject: Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel instances
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0533768400851386963=="
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

--===============0533768400851386963==
Content-Type: multipart/alternative; boundary="0000000000009ff50805a3e8f1a9"

--0000000000009ff50805a3e8f1a9
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 22, 2020 at 6:17 PM Snehasish Kar <snehasish.cse@live.com>
wrote:

> Hello Brian
>
> Thanks for your response, actually I tried using DDC 1 to n block as given
> here, but giving 1 to 8 channels have a timing issue, while generating the
> build. So I thought it as an alternative plan.
>
>
> https://gitlab.com/theseus-cores/theseus-cores/-/blob/master/fpga-rfnoc/README.md#dsp-utilsnoc_block_ddc_1_to_n
>

What was the timing issue?  Is it possible for you to break up the logic to
help relax timing constraints?

Brian

>

--0000000000009ff50805a3e8f1a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Apr 22, 2020 at 6:17 PM Snehasish=
 Kar &lt;<a href=3D"mailto:snehasish.cse@live.com">snehasish.cse@live.com</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">



<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello Brian</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks for your response, actually I tried using DDC 1 to =
n block as given here, but giving 1 to 8 channels have a timing issue, whil=
e generating the build. So I thought it as an alternative plan.</div>
<div dir=3D"ltr"><br>
</div>
<div><a href=3D"https://gitlab.com/theseus-cores/theseus-cores/-/blob/maste=
r/fpga-rfnoc/README.md#dsp-utilsnoc_block_ddc_1_to_n" target=3D"_blank">htt=
ps://gitlab.com/theseus-cores/theseus-cores/-/blob/master/fpga-rfnoc/README=
.md#dsp-utilsnoc_block_ddc_1_to_n</a></div></div></div></div></blockquote><=
div><br></div><div>What was the timing issue?=C2=A0 Is it possible for you =
to break up the logic to help relax timing constraints?</div><div><br></div=
><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><di=
v><div dir=3D"ltr"><div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--0000000000009ff50805a3e8f1a9--


--===============0533768400851386963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0533768400851386963==--

