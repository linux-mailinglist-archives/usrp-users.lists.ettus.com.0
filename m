Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D0F2682B2
	for <lists+usrp-users@lfdr.de>; Mon, 14 Sep 2020 04:44:19 +0200 (CEST)
Received: from [::1] (port=50200 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kHeTU-0004av-5i; Sun, 13 Sep 2020 22:44:12 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:42513)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kHeTP-0004TX-Lj
 for usrp-users@lists.ettus.com; Sun, 13 Sep 2020 22:44:07 -0400
Received: by mail-oi1-f174.google.com with SMTP id x14so16284405oic.9
 for <usrp-users@lists.ettus.com>; Sun, 13 Sep 2020 19:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AipxtzQmuX2NnQ8GOk64E2CND6A3YMUc4AtxprxTVAw=;
 b=ImpFaom36jlfskggFAbiuaBLDXsbnFtM8dS1kpUWo4x8JZYuKaAVUyyp1256pYuFOV
 pu5X0ZJvVK7Ehaw9nWduqblhI+qI03dy/+yx4NXeuXy+w+yK7xnnXwPcIieStM3U+6iH
 ha+FkraTEjQV4Np1oztcmOlgkGjW6ZgPL+2mi6NHFCuqPMVtleYAImQyQb4b7/mRAryn
 vNqKg6/fVDENZSxcZb4kYygfXkiDyFInnTGKX22f6KlDmFYc4vzIHEoK/f4MXnbJq4SK
 CxS7PHiWoIJQj0uJt/K40236AOqr+k+sNIaCxCc5RPXQ9M/626W4E3g5kyWR3NvIxygK
 xJyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AipxtzQmuX2NnQ8GOk64E2CND6A3YMUc4AtxprxTVAw=;
 b=rgAhcY2XWgt6GHR+iPsnWB6Tt1hLBsa/3g/sjMvaLMk+p4TYQr05P7AyqMDZwv27Eo
 fMgRIdVSVm2XCy5WQqjC01uXvSNZSJbifVNRXf1UGTYA80LN4SJDJNQVOFA7YhOnKO9o
 Y8S39b6aash2cXM9cB2299PYPrcXEnWveFSZw+3VJA/pRkmVT6kLu1zyewKXb7iKOyR4
 QLt0t+COnSKhM+oIMPFzuE71JxakBLJ2GAcnU38PJbvgRKp4BHlOPe1DhOcxYXR+EIEi
 ZxRbDhLi0ZwQ3DZRh/+g6M+gXmE76Ymbrweog/E203vqtjcp+QOfwCbghbUVwqvR1IQ5
 Lz1Q==
X-Gm-Message-State: AOAM532Z+xZqF3JkxNSPN0cHcwUCceH7QFOhmGPbJQC7Y/1g1FXwU/FQ
 9hVyHV7ucJ+WpdusbR+SD6IttiwQQJnZ42NbxpP61/9/aCU=
X-Google-Smtp-Source: ABdhPJxVoaZs9YdEwussJEJAUavHu1alzQUdORbqkNOI57lVbKJxKHCBs7VyOKD9QL0Zt5YmGYTEEM92vh+3Ht3ipFg=
X-Received: by 2002:aca:f0d:: with SMTP id 13mr7204291oip.124.1600051406854;
 Sun, 13 Sep 2020 19:43:26 -0700 (PDT)
MIME-Version: 1.0
References: <CACDReSwTxVn4CxgsKtza3YNTdOABNVk86NH3VY=2hR8N3P+VFA@mail.gmail.com>
In-Reply-To: <CACDReSwTxVn4CxgsKtza3YNTdOABNVk86NH3VY=2hR8N3P+VFA@mail.gmail.com>
Date: Sun, 13 Sep 2020 22:43:15 -0400
Message-ID: <CAB__hTTbSA4ipiKS2O9NgeD8TLq_Bm4-LmHPW0r5LrwDv7S1PA@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Extending example "rfnoc_replay_samples_from_file"
 to 2 Tx channels
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
Content-Type: multipart/mixed; boundary="===============5190321071811424462=="
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

--===============5190321071811424462==
Content-Type: multipart/alternative; boundary="000000000000ba8cdf05af3cfff2"

--000000000000ba8cdf05af3cfff2
Content-Type: text/plain; charset="UTF-8"

Hi Ofer,
This is possible. The Replay block has multiple ports. You can connect the
ports to the various DUC or Radio ports.  Which device?  Which version of
UHD?
Yes, you can start them synchronized by providing the same start time to
each channel.
Rob

On Sat, Sep 12, 2020 at 9:42 AM Ofer Saferman via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I would like to extend the example called "rfnoc_replay_sample_from_file"
> to play 2 files, one for Tx1 and one for Tx2.
> I would also like both playbacks to start simultaneously (be
> synchronized). Is the synchronization possible?
>
> What would be the methodology? Creating 2 instances of the replay blocks
> each connected to a Tx channel? Are there even more than one replay blocks
> available?
>
> I am walking blind in the woods here and any direction would be helpful.
>
> Regards,
> Ofer Saferman
>
> --
> This message has been scanned for viruses and
> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and is
> believed to be clean. _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ba8cdf05af3cfff2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ofer,</div><div>This is possible. The Replay block=
 has multiple ports. You can connect the ports to the various DUC or Radio =
ports.=C2=A0 Which device?=C2=A0 Which version of UHD?</div><div>Yes, you c=
an start them synchronized by providing the same start time to each channel=
.</div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Sep 12, 2020 at 9:42 AM Ofer Saferman via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I would like to ex=
tend the example called &quot;rfnoc_replay_sample_from_file&quot; to play 2=
 files, one for Tx1 and one for Tx2.</div><div>I would also like both playb=
acks to start simultaneously (be synchronized). Is the synchronization poss=
ible?</div><div><br></div><div>What would be the methodology? Creating 2 in=
stances of the replay blocks each connected to a Tx channel? Are there even=
 more than one replay blocks available?</div><div><br></div><div>I am walki=
ng blind in the woods here and any direction would be helpful.</div><div><b=
r></div><div>Regards,</div><div>Ofer Saferman<br></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000ba8cdf05af3cfff2--


--===============5190321071811424462==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5190321071811424462==--

