Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EB11DD5ED
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 20:26:36 +0200 (CEST)
Received: from [::1] (port=58452 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbptq-0005Oj-BW; Thu, 21 May 2020 14:26:34 -0400
Received: from mail-il1-f169.google.com ([209.85.166.169]:40739)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carlosruiznaranjo@gmail.com>)
 id 1jbptl-0005Hh-G9
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 14:26:29 -0400
Received: by mail-il1-f169.google.com with SMTP id m6so8075084ilq.7
 for <usrp-users@lists.ettus.com>; Thu, 21 May 2020 11:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XRHBXUa2rzP0P4es2m2mmp3vnijPE5DUpQc4cYVc6Ow=;
 b=IFYcAiwZhcsGDvcqupoou7vZUfXr+awgNwL3SlvfVxMEGBqfCsapq8aVTbqCCUyJX4
 K1RpdMQfIQQUAjLLKaWgbu6ZcAXwKiEHlVVeTla6h0d63uNtv4DcfCT26giUMsDq0eLY
 wcAX7chCaEeoQy6bqPyCYewfMjIAIj7EaFs3RA/w2gtAaEdslBW+K2sYqbTB3IWhT0IV
 V4SdNDwWDTNM6NsQ5wB05CcaDUr8oYVtURl0zxgsvuvbEAD2eaCHKii215ajhXsAW1SU
 qxxiPuyiZkXXtriOc9Z/idCPCdZz8Nvj5S7g1Edlf0kPvNzYSsdXpWNQzPN6jIpcPTsL
 14eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XRHBXUa2rzP0P4es2m2mmp3vnijPE5DUpQc4cYVc6Ow=;
 b=RhOv7zAnMOzI/lWRl8EbilhPL9mgPUQpIix+cycEhpIWpPkFBJDGOhEpyjMMdOwrkH
 nt+ysfspbN5FkSgKrkgi1ZXqcVMr9ZiZW58yx5gc8FZ8qQmHMLbZBalyTRnv4cnRKzq8
 X2NkCbTur96Tdf1UJQG+asFNgnthk8esIyEXjNxoR5Pap6VmVn/+YHaW0DWHTU/uATVG
 zc8Cr07onNWwcJC5pI7Pg2UmI9j9x3P2G8Ltb5VnIDT4YcFEtA0GV0L2MCplWWIslydQ
 FlVevouIx14xVfY3VfPp5tZSbSUIeWdg6I2J8S0uKzjylLTP16ohhYcBczkCs9T8RkH8
 cyJg==
X-Gm-Message-State: AOAM530tVOwxASuDm1+GtXFL36KcOghvQlRv8Z7hbwSHRPAG8tFUlr5K
 /DtFFCXdFNwA69uX/iba/lXMS8TN3t4fjNi8ZzE=
X-Google-Smtp-Source: ABdhPJzLmNbXsqZU3ij2bZQidAWcLdrfmUiF/LXpKMw73Tmh1WB+W1epHpfnb0+9PLHPbzDfcAgy58zBA2tIayd0shk=
X-Received: by 2002:a92:8d03:: with SMTP id s3mr10010960ild.256.1590085548715; 
 Thu, 21 May 2020 11:25:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2eGPhuOxNCAMULg=PFJBoGTP+2zAtd0YSMdGP-zH6Jse_D5w@mail.gmail.com>
 <CAEXYVK6W5UNvNUFuGaMU0iEWBkpPH8njt-FFkUdGLmqcwkER1g@mail.gmail.com>
In-Reply-To: <CAEXYVK6W5UNvNUFuGaMU0iEWBkpPH8njt-FFkUdGLmqcwkER1g@mail.gmail.com>
Date: Thu, 21 May 2020 20:25:37 +0200
Message-ID: <CAP2eGPjoT8ocBao=jW_Z=JRb6OLhx1cC_-J7nRANXCvwNNU7rA@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Subject: Re: [USRP-users] Multiple DMA_FIFO blocks
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
From: Carlos Alberto Ruiz Naranjo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2836384539031418082=="
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

--===============2836384539031418082==
Content-Type: multipart/alternative; boundary="0000000000004b32a105a62ca46c"

--0000000000004b32a105a62ca46c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the response Brian :)

The throughput is about 11MSamples.
What about to use the AXI_FIFO_LOOPBACK?

El jue., 21 may. 2020 a las 20:17, Brian Padalino (<bpadalino@gmail.com>)
escribi=C3=B3:

> On Thu, May 21, 2020 at 1:55 PM Carlos Alberto Ruiz Naranjo via USRP-user=
s
> <usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>> Is it possible to instance multiple DMA_FIFO blocks? I suppose I have to
>> do it manually in the x300_core.v. Is there any limitation?
>>
>
> You might need to make more ports on the DDR3 controller.  You'll
> ultimately be limited by the DDR3 controller for throughput.
>
> Brian
>

--0000000000004b32a105a62ca46c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you for the response Brian :)<br></div><div><br=
></div><div>The throughput is about 11MSamples.</div><div>What about to use=
 the <span lang=3D"en"><span title=3D""><span lang=3D"en"><span title=3D"">=
AXI_FIFO_LOOPBACK?</span></span></span></span></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue., 21 may. 2020 a=
 las 20:17, Brian Padalino (&lt;<a href=3D"mailto:bpadalino@gmail.com">bpad=
alino@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Thu, May 21, 2=
020 at 1:55 PM Carlos Alberto Ruiz Naranjo via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></d=
iv><div><span lang=3D"en"><span title=3D"">Is it possible to instance multi=
ple DMA_FIFO blocks?</span> <span title=3D"">I suppose I have to do it manu=
ally in the x300_core.v.</span> <span title=3D"">Is there any limitation?</=
span></span></div></div></blockquote><div><br></div><div>You might need to =
make more ports on the DDR3 controller.=C2=A0 You&#39;ll ultimately be limi=
ted by the DDR3 controller for throughput.</div><div><br></div><div>Brian</=
div></div></div>
</blockquote></div>

--0000000000004b32a105a62ca46c--


--===============2836384539031418082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2836384539031418082==--

