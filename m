Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B5070B28
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2019 23:20:45 +0200 (CEST)
Received: from [::1] (port=32790 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hpfjd-0002J6-ET; Mon, 22 Jul 2019 17:20:41 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:36832)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1hpfjZ-00027H-5M
 for usrp-users@lists.ettus.com; Mon, 22 Jul 2019 17:20:37 -0400
Received: by mail-oi1-f182.google.com with SMTP id q4so1527076oij.3
 for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2019 14:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SzO/l40P2ZzYnLF1ZhUhZP4A2JqFtrV2XZ52D+wj4+I=;
 b=MFLeOOeAwSKQdGaBi+8SEHRxkXKAYnfmNLWyQYgzIlyNF50EZQDVysLFklHWie6lU6
 q2ts4vv3XHr2zhOfNelCEzCCf4WkFIeUUJNYwSX9652rVGfLcmyEBUHsAstARQd7gE5x
 wWpMK6+zmBF7F1CjeoSJr9BZS0XcIcggIWIcLVezmcMLm4c0TBjjxaKEbjLCQnhYu0wN
 P17EapNe8HgfgthBUucGvACP8pMyZFO0SndYsUEooZ3TnmVh/Rfzc455WBJb77n6Ddmv
 AdNFOoTwF8o9cZ1dIiQbog0fHeCLlGozoKXCUh4rCQ6Ie4gX6rzS2780VuLezdn5yxee
 X7FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SzO/l40P2ZzYnLF1ZhUhZP4A2JqFtrV2XZ52D+wj4+I=;
 b=Jk0t0PeHcbE3jQeuX7oozwS1wQp31+J3ZlD6q3/YGClXtkC+SPptNuOVVgLB8AMIGN
 Ho27LSyBnkvgekAjgTKZMBYkjDoEjckb5gRLW1448rNLxPO3OPbqkoYd1oBG2chu/yfd
 5+qpQ1e1Jqe/Q6lYpS2x4KMpu7WRQQY6BX98EdW9J6gN+sRoUdUwOHY68NnIE+voqS6q
 wvHh9eVR8IjLgMKIZ5GMyaN2Srma8XN6qqf8qWbl3Q3E6iPl0CSpxOcZGRPVy+GnPuni
 0T+VpbsHh2dmBEn+AeYNClmI/YIvBDlxDTE6URhSzTkDRScDAmzz8A9AcfT/xOAZIOnI
 4eZw==
X-Gm-Message-State: APjAAAV1gNWvJF98q9TPN7NxCaT035X8dBgYpHNXjpyxpZtKg5cqO3T7
 fxClfTWJCGt6YdFzaJD8G22qM1jwhQGpMK8aizA=
X-Google-Smtp-Source: APXvYqyepzRt8nYGyqnDlFQKS27C+OvPQRayrEuiWikVA0JumUCFVgsQhp39vr/Nemmkay7tqpeI09+9KQeRtTDHPfU=
X-Received: by 2002:aca:df0a:: with SMTP id w10mr36454579oig.1.1563830396316; 
 Mon, 22 Jul 2019 14:19:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRhLMK7Z-YdCqXnjamb0d685pi+mbsWAzhzVG2_jsNw=g@mail.gmail.com>
 <CAEXYVK7UuJzmCWT==QnE0WwkZCx3SFUA0J4HSz4k6bOh2unK3g@mail.gmail.com>
 <CAEXYVK6Lh0f8wRm6XvEtrnAGqKKEf-4iJjt7eEinrgOpNgzSxg@mail.gmail.com>
In-Reply-To: <CAEXYVK6Lh0f8wRm6XvEtrnAGqKKEf-4iJjt7eEinrgOpNgzSxg@mail.gmail.com>
Date: Mon, 22 Jul 2019 17:19:44 -0400
Message-ID: <CAEXYVK7v0kQv5Pb49hrcTnzZzK_6yr00fYmcQF=+-gb1_uO+Lw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] RFNoC Testbench for custom block with
 AXI_CONFIG_BUS
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8686497229072332384=="
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

--===============8686497229072332384==
Content-Type: multipart/alternative; boundary="00000000000042f052058e4ba3de"

--00000000000042f052058e4ba3de
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 22, 2019 at 5:18 PM Brian Padalino <bpadalino@gmail.com> wrote:

> On Mon, Jul 22, 2019 at 5:12 PM Brian Padalino <bpadalino@gmail.com>
> wrote:
>
>> You just need to write_reg() and use an address of SR_AXI_CONFIG for
>> everything other than the last value, and use SR_AXI_CONFIG_TLAST for the
>> last one.
>>
>> That should push the valid high on the config line for each write you do,
>> and then on the last write both valid and tlast will be held.
>>
>
> Sorry, looking at my testbench I should have been more clear.
>
> I defined AXI_WRAPPER_BASE to 128.
> I defined SR_AXI_CONFIG as AXI_WRAPPER_BASE + 1.
> I defined SR_AXI_CONFIG_TLAST as SR_AXI_CONFIG + 1.
>
> In axi_wrapper, I instantiate:
>
>   SR_AXI_CONFIG and assign it SR_AXI_CONFIG, and I also put
> NUM_AXI_CONFIG_BUS to 1.
>

... and I meant SR_AXI_CONFIG_BASE is the parameter to set on axi_wrapper.

I shouldn't be so quick to reply.  Haste makes waste.  Again, apologies for
not being clear.

Brian

>

--00000000000042f052058e4ba3de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Jul 22, 2019 at 5:18 PM Brian Pad=
alino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt=
; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Mon, Jul 22, 2019 =
at 5:12 PM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=
=3D"_blank">bpadalino@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail=
_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
You just need to write_reg() and use an address of SR_AXI_CONFIG for everyt=
hing other than the last value, and use SR_AXI_CONFIG_TLAST for the last on=
e.<div><br></div><div>That should push the valid high on the config line fo=
r each write you do, and then on the last write both valid and tlast will b=
e held.</div></div></blockquote><div><br></div><div>Sorry, looking at my te=
stbench I should have been more clear.<div><br></div><div>I defined AXI_WRA=
PPER_BASE to 128.</div><div>I defined SR_AXI_CONFIG as AXI_WRAPPER_BASE=C2=
=A0+ 1.</div><div>I defined SR_AXI_CONFIG_TLAST as SR_AXI_CONFIG=C2=A0+ 1.<=
/div><div><br></div><div>In axi_wrapper, I instantiate:</div><div><br></div=
><div>=C2=A0 SR_AXI_CONFIG and assign it SR_AXI_CONFIG, and I also put NUM_=
AXI_CONFIG_BUS to 1.</div></div></div></div></blockquote><div><br></div><di=
v>... and I meant SR_AXI_CONFIG_BASE is the parameter to set on axi_wrapper=
.</div><div><br></div><div>I shouldn&#39;t be so quick to reply.=C2=A0 Hast=
e makes waste.=C2=A0 Again, apologies for not being clear.</div><div><br></=
div><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div></div>

--00000000000042f052058e4ba3de--


--===============8686497229072332384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8686497229072332384==--

