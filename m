Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 955762F39C4
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jan 2021 20:14:25 +0100 (CET)
Received: from [::1] (port=41864 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzP7X-0003NG-EL; Tue, 12 Jan 2021 14:14:23 -0500
Received: from mail-oo1-f53.google.com ([209.85.161.53]:36889)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kzP7T-0003FP-M4
 for usrp-users@lists.ettus.com; Tue, 12 Jan 2021 14:14:19 -0500
Received: by mail-oo1-f53.google.com with SMTP id p72so849222oop.4
 for <usrp-users@lists.ettus.com>; Tue, 12 Jan 2021 11:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TjxyxU2MZcVQhPGkTFDLWqZw8adIrnFEtYb6EiQOs1U=;
 b=QWNiR06d/rsdY4adDlDoLPGUkXXL/+KbNzUukE2sf6t/1UQeovXp5tRoCW19bqEpyn
 YCXOQzNK2ABaCxV2aTP4g1Vnl6vXNjC42MRSl68khd74mGzBFwRuIu5Y31NmL/D7w4ag
 kvfzDrn5sEHAKrt+es2+xkOrKKlZDHNcfqcIZL4w5spQUl8rwJFMecIEhVE6dv3p560x
 CDms4qpKfD8zJylXtkCSO0cznuUYvSRZO9YfJN4cO/5BY86U73j96HMfmRE3qr2zBSoS
 DqAKybD5e6nb1O35O4XaJbqe3gBXTIp/mkdtXyf2mWTbICA5PBffcfdGsbnpKc5co0lW
 LAuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TjxyxU2MZcVQhPGkTFDLWqZw8adIrnFEtYb6EiQOs1U=;
 b=sDZcEmRAjS6XHHRn7EJ+7Os/I68YCu7ctkG6EgyQpWo2ZsU7g+uYIfilIi+WJMZwl0
 BA3uFKi+sKG00s5I4cAaJ3WwZa8XT2nnJm717LXwT4TJdtf6PbMHZD2fQ7GjYDDbCWwV
 PIJWPfZl43lUz10BIZoAYf0TEMYdwf40dcYGCcQHM0PtNSCtBOuErhenMXeVKWLEhko4
 tT9Q+RIQl6jL88U4ZHH+b0LmnEOmchdwHCqJIWTpdDNSGBEfmYkxbd7knXRi96giq+8P
 rEAtPOIOjB+n2no4BBZlv0ha/mBMOu9ZnA2GldVO8//vSSAzwc9DYiNh7a9HVIY8+KOk
 yZXw==
X-Gm-Message-State: AOAM532Rx7SPPWPUSZoxDoyX/YgG8HetCr0xfhaceC2huHGPI5ANFLXz
 ggjk/6Bjzd+WrMGXqOSCbCRgn7z5BQjKeY1pofYZRZmN
X-Google-Smtp-Source: ABdhPJx+U5FNQdUrborOXV2Dt4d9QFyEOpCOhP1IDAgEqUYxWVooxAhnTMlnAps7GS/lxoZCqeII8R+NeXC1feZv4Dk=
X-Received: by 2002:a4a:d148:: with SMTP id o8mr397208oor.16.1610478818944;
 Tue, 12 Jan 2021 11:13:38 -0800 (PST)
MIME-Version: 1.0
References: <CACDReSyUpdMbXX690+DMMdvhqVX55bPn6s3S_dVdcoQ6++LUiA@mail.gmail.com>
In-Reply-To: <CACDReSyUpdMbXX690+DMMdvhqVX55bPn6s3S_dVdcoQ6++LUiA@mail.gmail.com>
Date: Tue, 12 Jan 2021 13:13:28 -0600
Message-ID: <CAFche=gFicAa2tU3Q14btV4zcHKS-R_ed-HY5cfyjDA30YvEqg@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Can E320 support RFNoC Replay block?
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============7414226199917953627=="
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

--===============7414226199917953627==
Content-Type: multipart/alternative; boundary="000000000000ec078405b8b8d1b2"

--000000000000ec078405b8b8d1b2
Content-Type: text/plain; charset="UTF-8"

Hi Ofer,

The Replay block should work fine with E320. It was reverted because the
DMA FIFO was needed in the default image. You can customize and build your
own FPGA images if you need something custom.

Thanks,

Wade

On Sat, Jan 9, 2021 at 12:30 PM Ofer Saferman via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> Looking at the FPGA code on the repository for E320 I see that the replay
> block was previously supported and reverted to a FIFO a few months ago.
> Is it not working properly? Can I get a previous version of the FPGA
> firmware and use the replay block on a E320?
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

--000000000000ec078405b8b8d1b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ofer,</div><div><br></div><div>The Replay block sh=
ould work fine with E320. It was reverted because the DMA FIFO was needed i=
n the default image. You can customize and build your own FPGA images if yo=
u need something custom.</div><div><br></div><div>Thanks,</div><div><br></d=
iv><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Sat, Jan 9, 2021 at 12:30 PM Ofer Saferman via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>Looking at=
 the FPGA code on the repository for E320 I see that the replay block was p=
reviously supported and reverted to a FIFO a few months ago.</div><div>Is i=
t not working properly? Can I get a previous version of the FPGA firmware a=
nd use the replay block on a E320?</div><div><br></div><div>Regards,</div><=
div>Ofer Saferman<br></div></div>
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
</blockquote></div>

--000000000000ec078405b8b8d1b2--


--===============7414226199917953627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7414226199917953627==--

