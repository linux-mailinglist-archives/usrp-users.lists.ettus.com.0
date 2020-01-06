Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 661F2131606
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2020 17:28:30 +0100 (CET)
Received: from [::1] (port=54780 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ioVEx-000122-0O; Mon, 06 Jan 2020 11:28:27 -0500
Received: from mail-lf1-f41.google.com ([209.85.167.41]:38933)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ioVEt-0000yk-TC
 for usrp-users@lists.ettus.com; Mon, 06 Jan 2020 11:28:24 -0500
Received: by mail-lf1-f41.google.com with SMTP id y1so36747274lfb.6
 for <usrp-users@lists.ettus.com>; Mon, 06 Jan 2020 08:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jsFmsVXNLIBtZM43nHqmI4cfCVezkamiHmhVjbfdDzE=;
 b=ml3z2jP4hva92sY3nWPc57CylzkmNI4uwJLMQikBN8e7FMZ74FDhu6XjbDWnPwiTRr
 /zIeOcqYiScDhEOvdjvOgQxZn2crNufuw8o95RIdIORzfesJdRmmsP4OCVD3BGeJ9T40
 BylyEgUD0daDF4mWEAlQjvNWcf7xv9BNsxZT7ouwa4CycQTn9u3f4nwMTvz7WDZtXOOL
 exrM7yA0mns71HuQ7pfZmzL0Gp2TVNX7KoEg77gs5L9WaY7NPsH5cwq+iBI+iP7DofGn
 sxF5Rag2QsWrxa/onXTf/rsV0r0c6w0nY/jsi5wdzIT7XbR9O9/AkdGuBPrMgnaphb3Y
 Alow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jsFmsVXNLIBtZM43nHqmI4cfCVezkamiHmhVjbfdDzE=;
 b=XiszRTYKOp/1LrAhPktSszHZBoe7bEUIjoTaDlNNfiY183RGTjdRkiYW7CBF33naym
 DsDwDfQvxjpgL8J1fcl4QcP34uYV8X7RZTQ9Z/TldX03k9dLifpYKkYG/gE2BmmvUKi+
 lEBK5rtP/LF74R69mnN17FfgrzOHE5FmlS8YpTPugZrO1t6JA2G0vdt5R+DZqE3OH2+e
 ks8P1JlqcrINYBX2TGasQdWTzDrM553tIkXmXDcnW///ci+M2z2c8dD3nqO6IgOOAKsy
 Nkhgcr5oc3+/MmiwLFr9YZYqEm3ut0jTDU+1a7EbZ+JnTs0091hs2gIwxHWy2rvnqD41
 W7ow==
X-Gm-Message-State: APjAAAXM/7ZZpX3lN6ZeIF6aft4hRPf0jvax4oj0dNdgufbOy5o3Xet3
 RBEJv6R7G92PXilIdR5RD9wlTqAknUJ/lIavn3HAeLWU
X-Google-Smtp-Source: APXvYqwW5aOYXOst2kjogUJ2sImXC5M3C+65V1Z3IJdLKg5Cqqcao3kVfdnc4rveeZrLQkYxwyOCIiFAmIhsSmEdo1g=
X-Received: by 2002:ac2:420e:: with SMTP id y14mr58023325lfh.145.1578328062407; 
 Mon, 06 Jan 2020 08:27:42 -0800 (PST)
MIME-Version: 1.0
References: <DM6PR03MB3628C629B0B2462EB4C9A3A6D3220@DM6PR03MB3628.namprd03.prod.outlook.com>
In-Reply-To: <DM6PR03MB3628C629B0B2462EB4C9A3A6D3220@DM6PR03MB3628.namprd03.prod.outlook.com>
Date: Mon, 6 Jan 2020 10:27:30 -0600
Message-ID: <CANf970ahrDonuDf=ROLFBkLJcA=tD=386JP+Uv+7uVFjNeibrg@mail.gmail.com>
To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
Subject: Re: [USRP-users] dpdk with x300
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8377909697751697830=="
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

--===============8377909697751697830==
Content-Type: multipart/alternative; boundary="0000000000007fc6cb059b7b23de"

--0000000000007fc6cb059b7b23de
Content-Type: text/plain; charset="UTF-8"

Lorenzo,

What version of DPDK are you using?

Sam Reiter
Ettus Research

On Fri, Jan 3, 2020 at 8:20 PM Minutolo, Lorenzo via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi All,
> I'm using an x300 connected via a Intel X710 to a machine running Ubuntu
> 18.04. I'm using the recently released UHD 3.15 LTS.
> I'm trying to follow the guide to connect via dpdk. Everything in the
> guide on the Ettus website works however when launching uhd_usrp_probe (as
> sudo uhd_usrp_probe --args "address = 192.168.30.2, use_dpdk=1") I get the
> output reported in the output.png attachment. My actual dpdk-devbind.py
> --status is reported in status.png attachment as well as the uhd.conf I'm
> using.
>
> What am I doing wrong?
>
> In the configuration file I tried altering the cores to see if that was an
> issue but nothing changed.
>
> Thanks,
> Lorenzo
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007fc6cb059b7b23de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Lorenzo,</div><div><br></div><div>What version of DPD=
K are you using?</div><div><br> </div><div><div><div dir=3D"ltr" class=3D"g=
mail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><d=
iv dir=3D"ltr">Sam Reiter <br><div>Ettus Research<br></div></div></div></di=
v></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, Jan 3, 2020 at 8:20 PM Minutolo, Lorenzo via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m using an x300 connected via a Intel X710 to a machine running Ubunt=
u 18.04. I&#39;m using the recently released UHD 3.15 LTS.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m trying to follow the guide to connect via dpdk. Everything in the g=
uide on the Ettus website works however when launching uhd_usrp_probe (as s=
udo uhd_usrp_probe --args &quot;address =3D 192.168.30.2, use_dpdk=3D1&quot=
;) I get the output reported in the output.png attachment.
 My actual dpdk-devbind.py --status is reported in status.png attachment as=
 well as the uhd.conf I&#39;m using.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
What am I doing wrong?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
In the configuration file I tried altering the cores to see if that was an =
issue but nothing changed.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Lorenzo<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000007fc6cb059b7b23de--


--===============8377909697751697830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8377909697751697830==--

