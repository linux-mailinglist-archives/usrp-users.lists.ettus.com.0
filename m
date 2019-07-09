Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA88B63CCF
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2019 22:41:53 +0200 (CEST)
Received: from [::1] (port=49422 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hkwvv-0005jp-5B; Tue, 09 Jul 2019 16:41:51 -0400
Received: from mail-lj1-f180.google.com ([209.85.208.180]:45614)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1hkwvr-0005Xo-9X
 for usrp-users@lists.ettus.com; Tue, 09 Jul 2019 16:41:47 -0400
Received: by mail-lj1-f180.google.com with SMTP id m23so20860993lje.12
 for <usrp-users@lists.ettus.com>; Tue, 09 Jul 2019 13:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=LWY/mASXBpZPk/db6HV636KimNe21cvDze7hllIaDNA=;
 b=AkfDSwycgYtS6j9q94/idN+xgsRu0x11UBta00iXNVmiyg2fvswJZKYkZELLahrmLu
 wrm4ghl54Q5vIano9J70AenobApgIWNEn5iEBz3IoQ+KbnLIGGDLjDloDnAa5sHH4DwD
 uo19OExpUHIEVIprcB3lYiNmFVyGv6ncbtLn8scU9bh++nNDme52o7jvhz2KMmNe39u4
 K+ZVZrNvLGgn6+G5wo25FPCjYcnQoPsBNarmPIWypgk85HXgsVrjKyWojrODPsBl9hnu
 nG9WMR37Prjc0FuY4UtEtZ5cCInGPHS/Rl2rsa1T/NqG4PwMqemwbgXTEtkd2WexeQ3a
 poWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=LWY/mASXBpZPk/db6HV636KimNe21cvDze7hllIaDNA=;
 b=eetJ61wr6948omju5sYnSu+VabHELZWSmeSKq486etlUubgpidxnX7FRrTogUgLX6A
 kXrfK9mn/wjwllGBjvKbayxn0GZhJG2R0rHQZOIVKdRYED8Lzj7TJ9dWZLqbdDwT3TvR
 OIUMI6xcD3SnmGqhrpCedMnXRPWntNVZanc+9sn6YNh31Iv/yD5PLUI1AbrZB/t00xhg
 gjJG0qb3Wp1FHC1eV8/zEcAz7l55PFuJPRbh0RHf/a7kE8o5WdzmKhBR/+9m7WtBB/fh
 JwmsG5+6kIBLasT+Vm0VOpmglq5L9s0BEAuWxd9Eo9CplQ5JHSUCEIs9kL+ZXt7kvmuB
 FCPw==
X-Gm-Message-State: APjAAAV88AOknYyC40QoNDjG25VNE+ZPuH3Q3Gwgx6xS0VOE5dYN3r/C
 W4sOE6Vq9HS7Do2+rklU+It90yr8lzfQIfM3hJKqBZLA
X-Google-Smtp-Source: APXvYqwFPJhYrOMVy6vi8Ect4J7+w/+Wuaq5qqTHHb/SDhTC6qqIhkjt4EW3la9n6hgSc43AaZcVoqJfS7FQQl6vTXU=
X-Received: by 2002:a2e:9cd1:: with SMTP id g17mr15339105ljj.234.1562704864770; 
 Tue, 09 Jul 2019 13:41:04 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h38pXPO0OYEEYQ=NjKmbvnepaKJJiVHUyGAqtHntYMM3rA@mail.gmail.com>
In-Reply-To: <CANQ3h38pXPO0OYEEYQ=NjKmbvnepaKJJiVHUyGAqtHntYMM3rA@mail.gmail.com>
Date: Tue, 9 Jul 2019 16:41:50 -0400
Message-ID: <CANQ3h38XTqxTTqKqCc376Q2gAygR4QAiX1V6CrJg8YOM-jm5gA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Command uhd_fft throwing seg fault (core dumped)
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
From: Saeid Hashemi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saeid Hashemi <saeidh@gmail.com>
Content-Type: multipart/mixed; boundary="===============6576506368383271496=="
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

--===============6576506368383271496==
Content-Type: multipart/alternative; boundary="0000000000005a7c53058d459445"

--0000000000005a7c53058d459445
Content-Type: text/plain; charset="UTF-8"

To include context, the uhd_config_info command shows the following:

linux; GNU C++ version 4.8.4; Boost_105400; UHD_003.010.002.000-release

And uname -a:

Linux nuc03 3.19.0-61-lowlatency #69~14.04.1-Ubuntu SMP PREEMPT Thu Jun 9
10:15:00 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux

The command line output from uhd_fft only shows the following:

Segmentation fault (core dumped)



On Tue, Jul 9, 2019 at 4:10 PM Saeid Hashemi <saeidh@gmail.com> wrote:

> Hi all,
>
> Running the command "uhd_fft" has been giving this result for me, would
> anyone have a recommendation on how to fix the issue?
>
> Thanks and regards,
> Saeid
>

--0000000000005a7c53058d459445
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>To include context, the uhd_config_info command shows=
 the following:</div><div><br></div><div style=3D"margin-left:40px">linux; =
GNU C++ version 4.8.4; Boost_105400; UHD_003.010.002.000-release<br></div><=
div><br></div><div>And uname -a:</div><div><br></div><div style=3D"margin-l=
eft:40px">Linux nuc03 3.19.0-61-lowlatency #69~14.04.1-Ubuntu SMP PREEMPT T=
hu Jun 9 10:15:00 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux</div><div style=
=3D"margin-left:40px"><br></div><div>The command line output from uhd_fft o=
nly shows the following:</div><div><br></div><div style=3D"margin-left:40px=
">Segmentation fault (core dumped)</div><div style=3D"margin-left:40px"><br=
></div><div style=3D"margin-left:40px"><br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 9, 2019 at 4:1=
0 PM Saeid Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com">saeidh@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">Hi all,<div><br></div><div>Running the command &quot;uhd_f=
ft&quot; has been giving this result for me, would anyone have a recommenda=
tion on how to fix the issue?</div><div><br></div><div>Thanks and regards,<=
/div><div>Saeid</div></div>
</blockquote></div>

--0000000000005a7c53058d459445--


--===============6576506368383271496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6576506368383271496==--

