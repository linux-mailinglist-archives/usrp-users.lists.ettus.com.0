Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 371B57422A
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jul 2019 01:35:16 +0200 (CEST)
Received: from [::1] (port=45708 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hqQmw-0005ir-7r; Wed, 24 Jul 2019 19:35:14 -0400
Received: from mail-ua1-f42.google.com ([209.85.222.42]:35081)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1hqQms-0005UO-Pa
 for usrp-users@lists.ettus.com; Wed, 24 Jul 2019 19:35:10 -0400
Received: by mail-ua1-f42.google.com with SMTP id j21so19147078uap.2
 for <usrp-users@lists.ettus.com>; Wed, 24 Jul 2019 16:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kPFOPnAjWXdDxSY25sMqrUzXb3KaVJJTJRMEXAZPUOQ=;
 b=r0J1SA1WqrY3aKH5BbMUnxAWuVo2ZIaTDFbGmA+qvhHt3B+0S8WqlA/n4BT1kXA8hD
 ryNYE4oPKbcnGk03usJUuFVwlQq7Jbi12e9ke+BHfPlku6Y9gNx7DHq1snGfnpHuJXAj
 DHKOSsMLdB+CijVPVtLmAFPzt7llkAGcRTxgY5tH+rInF1DkHn/9P8GwFdZZyVHj347a
 BsD0VWkfoL3CEDG4uF4EhPcBTl/kqc5QqjKhVj4ehzHhYVe8qRRdIu75WPzBvZRI5Ks1
 e1UD/q5OPosQAaRCXs/06T9LVDo95z4ylKbDp7E7UF5B9Ag/1zQnhetRvngpbciedIUE
 dVZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kPFOPnAjWXdDxSY25sMqrUzXb3KaVJJTJRMEXAZPUOQ=;
 b=NWjQk6oVwlYM2AFOmbXz88Eps9AwytlbFAvVsv3qUzZfMX2ELnRnjjO+LPH45UzwNE
 Qs5SO06viCrnZFvm1obVvklEwICA4J31/lHQ/3yD8GZzdzPU3O9kxz+P8B1ly/6Thbfq
 X06iLVE1PhAuDlvcFeXLOjHxbOa9EiFpB0s+TVlDmm/dHd7nIPRIoFZccw+B2EuDVFop
 Ni2Vt4IV7S5n1sDbzCwpP4wNWI22PZn9bFSWFzmmlQHAwOC+3rrzebzUThLF0p3ZAaT7
 rU6KpIqUvCQdjQHZC0vvkSd5u5Rjw6pmqyJWszilHvwrZ3bArzIHxlWYw+3Qn1I6/d8z
 azOA==
X-Gm-Message-State: APjAAAWwz2ZCDIik1m1noiMJGQ3vFCTQvpD3l5Dt1Mhy3rYBkthkt/s/
 Y43sUP1QWshRbWqHmIVU69I8byLwVUraf5S2tqA=
X-Google-Smtp-Source: APXvYqzUxE9oNKcm9iOMRtT0uypbIAJ+74SxEfExmOk9vunirIEHtrHIAaf07RfidXN27zv3j2WrwWsjJQejvwL1KgY=
X-Received: by 2002:ab0:b99:: with SMTP id c25mr54567967uak.53.1564011270042; 
 Wed, 24 Jul 2019 16:34:30 -0700 (PDT)
MIME-Version: 1.0
References: <97D6F3B6-019A-41A3-A8D6-06D32C15B528@yahoo.com>
In-Reply-To: <97D6F3B6-019A-41A3-A8D6-06D32C15B528@yahoo.com>
Date: Wed, 24 Jul 2019 19:34:18 -0400
Message-ID: <CADRnH20Zn3eje8HuKxLV3nJhvKBmPpDkNiGcjX2ojVN80VPdiw@mail.gmail.com>
To: Royce Connerley <royceconnerley@yahoo.com>
Subject: Re: [USRP-users] RFNoC Polyphase Channelizer updates
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0104849178335262809=="
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

--===============0104849178335262809==
Content-Type: multipart/alternative; boundary="0000000000002cf968058e75c0f0"

--0000000000002cf968058e75c0f0
Content-Type: text/plain; charset="UTF-8"

Hi Royce,

Phil and I have been working on the channelizer in the theseus-cores repo
here: gitlab.com/theseus-cores/theseus-cores

The master branch has a (potentially) working channelizer, at least
according to my recent tests on the x310, as long as the network interface
supports the desired output rate.

There's also an fpga solution for channel downselection in a branch that
Phil put together. The ball is in my court to turn the crank and merge to
master with supporting software, but I haven't gotten much of a chance
recently.

If you're interested in testing we could definitely use some more people to
give it a shot :D Let me know if you need a sample bitstream or if you can
build one yourself.

EJ

On Wed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users <
usrp-users@lists.ettus.com> wrote:

> At the 2018 GRCon, EJ Kreinar spoke about improvements to the RFNoC
> polyphase channelizer.  Has there been any activity on this?
>
> Royce Connerley
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002cf968058e75c0f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Royce,<div dir=3D"auto"><br></div><div dir=3D"auto">Ph=
il and I have been working on the channelizer in the theseus-cores repo her=
e: <a href=3D"http://gitlab.com/theseus-cores/theseus-cores">gitlab.com/the=
seus-cores/theseus-cores</a></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">The master branch has a (potentially) working channelizer, at least ac=
cording to my recent tests on the x310, as long as the network interface su=
pports the desired output rate.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">There&#39;s also an fpga solution for channel downselection in a =
branch that Phil put together. The ball is in my court to turn the crank an=
d merge to master with supporting software, but I haven&#39;t gotten much o=
f a chance recently.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">If you&#39;re interested in testing we could definitely use some more pe=
ople to give it a shot :D Let me know if you need a sample bitstream or if =
you can build one yourself.</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">EJ</div><div dir=3D"auto"></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 24, 2019, 4:39 PM Royce Con=
nerley via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">At the 2018 GRCon, EJ Kreinar spoke about improvements to the RFNoC pol=
yphase channelizer.=C2=A0 Has there been any activity on this?<br>
<br>
Royce Connerley<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000002cf968058e75c0f0--


--===============0104849178335262809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0104849178335262809==--

