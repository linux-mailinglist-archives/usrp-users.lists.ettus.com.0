Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D88F2649B1
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 18:27:19 +0200 (CEST)
Received: from [::1] (port=44882 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGPPo-0001D4-OA; Thu, 10 Sep 2020 12:27:16 -0400
Received: from mail-yb1-f179.google.com ([209.85.219.179]:39147)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kGPPk-00013l-1G
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 12:27:12 -0400
Received: by mail-yb1-f179.google.com with SMTP id r7so4462865ybl.6
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 09:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=67n2itW3rtLmmOhSIeMRNwqAaMAnRoQH0PputJQ4K2c=;
 b=iAmdOrS2HOjgOtDxJ6zv8enAfGqnxWyobPTZs6AoOr2uhh9X15GHEKEgtfbI1Mk4ir
 PE3WaNUQZopQWL6UKtO2TR9kFSWvUMirXzsNK+MCP7O+ud+V1o0UOa6ExYzNK58th+hT
 Jj5uHVVyU4Oh9mkUjzX0CySsLBrw2B1AgeAqYtxpsevAWnXE/I7v0nsrXCj4GwDnOdjM
 aksuWX/WsM7u7gPnU0XOPKD+CubEmDVIQhzLOyrwbLPY7ajgUZ4K2eYdl+D7yWhry4Ym
 zWRPOVsYK/No5YT4R1adgAttZ6GLS1GgUXhOd+c7trdl9t5oKBFQGgX63+EY24zelxm3
 KHkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=67n2itW3rtLmmOhSIeMRNwqAaMAnRoQH0PputJQ4K2c=;
 b=s3NlRZzN7dlDo0PEsWgy/TL2Tq+zmylEBACv4v2Dmp4p01Kp34gNxHizzvS8TqkMYc
 /d6o/Me6Ad5AHseKDGkUlk5cVtIUrjS3JI3aHS10n8Wacuncn80odE61MFIhames6op0
 tBw1/mWGxRrvtCvCN9RzPBxOjfsXhgjEWrdDGk0y4E1caO/gZcOI7N5GqQ+DwQ3V1nNZ
 76yYg+86FK6NgNUwcOt7e/I07ZaZIJbBqYp7AO/t96MZNa8enQVpaWCQ6CtqIdfuAH69
 MEAou+24+o0uMDb7yChy5+ML0Z+hdSa/2oUyMUy42Nfs2Rvcs3w23OemBIyrMGNaT6GQ
 K0eA==
X-Gm-Message-State: AOAM530pU9+oTBXOFlK35rhH/0pEYyui5ipvBkCE04zGV83wvM76d30q
 8ire84GbRaLfaSpXXWW6ri4fQE3nR7fQ3CC5OgY=
X-Google-Smtp-Source: ABdhPJzHMS5MpVgsJB89uJDkhJoyYjQGEA8CwJ+7PS+3Jdz0y/PM2TmRXQqTMayt3ZFg1iJF0/qvkpDX6uxKr+LQCJA=
X-Received: by 2002:a5b:8c8:: with SMTP id w8mr13122751ybq.199.1599755191389; 
 Thu, 10 Sep 2020 09:26:31 -0700 (PDT)
MIME-Version: 1.0
References: <CACryqrG8a3S1ARULWRPYte8aoUVmh8B-qBxjX6GS_j_kam_q-w@mail.gmail.com>
 <5F5A50F1.4080500@gmail.com>
 <CACryqrG3Eo6KTFM1v2SpA2Dc8Q71iznrLtai=79bPWgDG=xXRw@mail.gmail.com>
 <5F5A52C5.20703@gmail.com>
In-Reply-To: <5F5A52C5.20703@gmail.com>
Date: Thu, 10 Sep 2020 10:26:21 -0600
Message-ID: <CACryqrG_kG4==1T_zjWqNPENWoe3y5ff7j9EOeHxQqFv1tFnmg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] RuntimeError: System receive MTU size
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
From: Xiang Ma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xiang Ma <marxwolfs@gmail.com>
Content-Type: multipart/mixed; boundary="===============7937778253471700880=="
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

--===============7937778253471700880==
Content-Type: multipart/alternative; boundary="000000000000e9104705aef80798"

--000000000000e9104705aef80798
Content-Type: text/plain; charset="UTF-8"

Yes, no errors and warnings.

On Thu, Sep 10, 2020 at 10:22 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 09/10/2020 12:18 PM, Xiang Ma wrote:
> > No, I run on a real Ubuntu 18.04 machine. I do not find anything
> > special in the ifconfig result:
> > (base) hu@hu:~/torch$ ifconfig
> > enp6s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
> >         inet 192.168.10.66  netmask 255.255.255.0  broadcast
> > 192.168.10.255
> >         inet6 fe80::ba85:84ff:febb:bb5c  prefixlen 64  scopeid 0x20<link>
> >         ether b8:85:84:bb:bb:5c  txqueuelen 1000  (Ethernet)
> >         RX packets 211324  bytes 13170668 (13.1 MB)
> >         RX errors 0  dropped 0  overruns 0  frame 0
> >         TX packets 212033  bytes 13064575 (13.0 MB)
> >         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
> >         device interrupt 19
> >
> If you just run:
>
> uhd_usrp_probe   does that produce a "normal" result?
>
>
>

-- 
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com <congshanya@gmail.com>

--000000000000e9104705aef80798
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, no errors and warnings.</div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10, 2020 at 10:22 =
AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonb=
raun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">On 09/10/2020 12:18 PM, Xiang Ma wrote:<br>
&gt; No, I run on a real Ubuntu 18.04 machine. I do not find anything <br>
&gt; special in the ifconfig result:<br>
&gt; (base) hu@hu:~/torch$ ifconfig<br>
&gt; enp6s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mtu 1=
500<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet 192.168.10.66=C2=A0 netmask 255.=
255.255.0=C2=A0 broadcast <br>
&gt; 192.168.10.255<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet6 fe80::ba85:84ff:febb:bb5c=C2=A0=
 prefixlen 64=C2=A0 scopeid 0x20&lt;link&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether b8:85:84:bb:bb:5c=C2=A0 txqueue=
len 1000=C2=A0 (Ethernet)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX packets 211324=C2=A0 bytes 1317066=
8 (13.1 MB)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX errors 0=C2=A0 dropped 0=C2=A0 ove=
rruns 0=C2=A0 frame 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0TX packets 212033=C2=A0 bytes 1306457=
5 (13.0 MB)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0TX errors 0=C2=A0 dropped 0 overruns =
0=C2=A0 carrier 0=C2=A0 collisions 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0device interrupt 19<br>
&gt;<br>
If you just run:<br>
<br>
uhd_usrp_probe=C2=A0 =C2=A0does that produce a &quot;normal&quot; result?<b=
r>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"times new roman, =
serif" size=3D"4" style=3D"color:rgb(136,136,136)"><i><b>Xiang Ma,=C2=A0</b=
></i></font><span style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div=
><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">College of E=
ngineering</font></div><div><font color=3D"#444444">Utah State University</=
font></div><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-=
mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17,85,204)"=
 target=3D"_blank">marxwolfs@gmail.com</a></font></div></div></div></div>

--000000000000e9104705aef80798--


--===============7937778253471700880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7937778253471700880==--

