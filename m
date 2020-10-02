Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 511C5281A58
	for <lists+usrp-users@lfdr.de>; Fri,  2 Oct 2020 20:01:03 +0200 (CEST)
Received: from [::1] (port=42442 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kOPMa-0004rR-W6; Fri, 02 Oct 2020 14:01:01 -0400
Received: from mail-ed1-f50.google.com ([209.85.208.50]:45151)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kOPMX-0004kX-3Y
 for usrp-users@lists.ettus.com; Fri, 02 Oct 2020 14:00:57 -0400
Received: by mail-ed1-f50.google.com with SMTP id l17so2568351edq.12
 for <usrp-users@lists.ettus.com>; Fri, 02 Oct 2020 11:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SwBKV8TPOZteith/z3togf8LDT2gSMy3gIS7qO2wtco=;
 b=ljr98ctfONVouNxrHcElOWr+U7j4FJm/PrQKMb8dRwDpu2VlH4/l6zzd1ZwX78gqKV
 pjY1ZSN+fp+DYwqYqNP7QWVn8AMjY18KPa4RofOEOSVFTEPNzb+T/PoKQ0gqdjVlpkX2
 v/OomAD1kvZsTDUmJC/KEdyHFQ4532maHUZlXx2Ju2f4c6mhxP21bdk7mUge4gHLTwfW
 qjhiL0eQafE+N93PoZ/cL9lEPiQQIskRjNJ3fVU/Jf99HSOkSpXU8bw3/jo//6MpY+Lg
 VF4FXR5EkgrDMv/mZ/W7XDfgkN/cTn/c0iz22WWFAguEOFCNAgN44PPIIpvw7oXoKH94
 0vSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SwBKV8TPOZteith/z3togf8LDT2gSMy3gIS7qO2wtco=;
 b=Omg4qwA3hyEbuhOyqsk1XG26A4YWdeZp/FbDTnoenNJXxJsm/KULYt06qBzzhRY4Tl
 jaMDFAXMJ0EzTD0dvxkKuouguP3RPGR+RGaCST3VHngGSgocPNOgK1nG4xIt8mItbdI8
 NlkzwsXmIs6XuDnoGtJ8Zy+yD0lRgyJrnF3IJ04hQ4HeQj3aZ1m3yLpfSaGGuwSKELjc
 sysrfEF2ebGg9kirdlyM5IpEs24AfN1QlRSeeUa7qdWbuW6w6TESMSgznGDImer0sKjq
 eyET98q6PwHVn2AMgufUKaKE+EzBvHS1vAIunZ7r5rfRCg9eBjRLv2eI2exl79yuqV7y
 l4Vg==
X-Gm-Message-State: AOAM530+HRw25UbMTX4hMWFpEmHuzarQZmn95P98gHzP3QtS1crPU/an
 1uNcTwlUZJDqh9FytjVcY2msaPNLfMCOiwrSLILDKGXNsYG+5g==
X-Google-Smtp-Source: ABdhPJw24DxSB6lb5UjJj/nnDOahfvEq+rTAProIyCqkOwTSwtda93VLbo4m4n3lM5NQqWBXBjLuY+pUH/uXkaLgBUs=
X-Received: by 2002:a50:852a:: with SMTP id 39mr1936128edr.63.1601661616129;
 Fri, 02 Oct 2020 11:00:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQ1azFd2KFH-g0+ASGSfBjCp1FpizqaZS4zcm4i51JJxg@mail.gmail.com>
In-Reply-To: <CAB__hTQ1azFd2KFH-g0+ASGSfBjCp1FpizqaZS4zcm4i51JJxg@mail.gmail.com>
Date: Fri, 2 Oct 2020 14:00:05 -0400
Message-ID: <CAGNhwTN+g3Vt=Ox68igLx1TSgXgF65eb7ftk-+=zXM-OphQxOQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Operating E310 from host?
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============2968333278996610373=="
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

--===============2968333278996610373==
Content-Type: multipart/alternative; boundary="000000000000ae176105b0b3e700"

--000000000000ae176105b0b3e700
Content-Type: text/plain; charset="UTF-8"

UHD 3.15: just on the E310. No network mode.

UHD 4.0: either.


On Fri, Oct 2, 2020 at 1:57 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> Is it possible to run an Ettus example app  & UHD on the host PC with an
> E310 (rather than running the app/UHD directly on the E310)?  This is a
> typical mode for the N310, but I wasn't sure if the E310 supported it.  I
> am interested in the answer for both 3.15 and 4.0.
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ae176105b0b3e700
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">UHD 3.15: just on the E310. No network mode.<div><br></div=
><div>UHD 4.0: either.<br><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 2, 2020 at 1:57 PM Rob Koss=
ler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>Is it possible to run an E=
ttus example app=C2=A0 &amp; UHD on the host PC with an E310 (rather than r=
unning the app/UHD directly on the E310)?=C2=A0 This is a typical mode for =
the N310, but I wasn&#39;t sure if the E310 supported it.=C2=A0 I am intere=
sted=C2=A0in the answer for both 3.15 and 4.0.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ae176105b0b3e700--


--===============2968333278996610373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2968333278996610373==--

