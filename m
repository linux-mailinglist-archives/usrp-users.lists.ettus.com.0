Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1CF2F4EFD
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 16:43:33 +0100 (CET)
Received: from [::1] (port=51206 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kziIx-0000DW-Ay; Wed, 13 Jan 2021 10:43:27 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:38359)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kziIt-00008r-GU
 for usrp-users@lists.ettus.com; Wed, 13 Jan 2021 10:43:23 -0500
Received: by mail-ot1-f50.google.com with SMTP id j20so2278734otq.5
 for <usrp-users@lists.ettus.com>; Wed, 13 Jan 2021 07:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5mplEF0kX72bxU27BGzvg4na0rot1w5DzML6XIceHOU=;
 b=tAalc2ekOOQ31KOKBUyzjIcQY7miF5tC/4jMR4W1tST4GUKt1Vq4PSwsiaGWS1zG9m
 sqAAga1kmCuob5bqK8futg9XHjSeix2p4A4ldXMOS2T6nPl2ni8iSe7xjLvCU1ckiYyq
 jdBrjZncagUCjMCL+2322GSabDgxxz6xIqwl5rrrO2crBcPJSutrdm0PyxRd9MAdrsG4
 aGGhRpfnGP5r0i3RNFL52eppsRTJmMlSKQKXRjZQNS3hXunrEoNEoNIzyTqJXM0UUeVd
 GGbwpBvG3ItiWUHKFg9B88Z7gWuOaFI4Q6Mqm7lt4DRf6tpovoAHPX2wHdcyZwqK+XBZ
 /aWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5mplEF0kX72bxU27BGzvg4na0rot1w5DzML6XIceHOU=;
 b=YDbE6oc6BgSb+F5JfSioFS8FbJ41fQUbMV+NusJaweErgeujXGOB7MxNmirSyDyvQI
 9h4mTPKatuFvB+rUiNf90ygY7V8jecFETGgAebt3KBpCUyDU2KwlFqIW53GV0UXAh9zQ
 cxVDyy+cU9UpKRSwG8Q2gvg6KCwboeXz0n1VfPUjXTK1v+oaB5bT921faQlxu8lH4U5g
 lzIVedg1yHWQjQCr4yGw+i/crRQyO0Z3vpK58yDiv06QJwuJch5nQCr1Q8Z1/JvKFFEu
 ZVZnbCp242qd9y1RqdVoXAjPIvp95tGd5QzixQ+Ig7kGL35FHVV+JOFbVOmSrA2AdafF
 RixQ==
X-Gm-Message-State: AOAM5306rIYoXKgZJqdxAhrcMVlVmT92WnOnUFkV4czftlezpZUD8JIQ
 gw8r8SrlCwjoyuCF1Xdk+JZ/cPp9JU1ycC3KUQaTEL0A
X-Google-Smtp-Source: ABdhPJyLCdCNvN7Mk05xLe5wy9Uq63I7YQZPE7aIDo/sj5ur9sE67689cX2gKFm5ho8soSYUoyPHRTUcqzCBYOjdDjY=
X-Received: by 2002:a9d:6e0e:: with SMTP id e14mr1685835otr.30.1610552562687; 
 Wed, 13 Jan 2021 07:42:42 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT7xrij++hgMQj_RYCa3GMAjj8znAmSg68Yhj=miM=jkg@mail.gmail.com>
In-Reply-To: <CAB__hTT7xrij++hgMQj_RYCa3GMAjj8znAmSg68Yhj=miM=jkg@mail.gmail.com>
Date: Wed, 13 Jan 2021 09:42:33 -0600
Message-ID: <CAFche=iZrigG8r3+2DdvGunazqNSayAp55Qm56Od=Y_XCgOOoA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Packet length control in rx_streamer
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
Content-Type: multipart/mixed; boundary="===============7420648444888155384=="
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

--===============7420648444888155384==
Content-Type: multipart/alternative; boundary="00000000000064320305b8c9fdb7"

--00000000000064320305b8c9fdb7
Content-Type: text/plain; charset="UTF-8"

The block ultimately determines the size of the packets that are sent out.
Some block controllers (like the radio) use the spp argument to set the
length that the block generates. I don't know what's going on in your case,
but I would suggest looking at how the packet length is being controlled by
the block. You could also use wireshark to confirm the packet length.

Wade

On Tue, Jan 12, 2021 at 3:47 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I have a custom rfnoc block that I am trying to test with the graph "host
> => myblock => host".  "myblock" is supposed to output packets of a given
> size (256) and I am trying to verify that it is doing so.  However, in my
> simple application to test this graph, I get the following behavior:
>
>    - if I don't set "spp" in my rx_streamer args, I get packet length =
>    1989.
>    - if I set "spp" in my rx_streamer args, I get the packet length that
>    I set.
>    - But, what I really want is to get packets of the same size as the
>    block output.
>
> Is this something that needs to get configured in my block controller?
> Perhaps there is some packet forwarding policy.  It's a bit confusing to
> me.  How can I keep the rx_streamer from changing the packet size that is
> output from my block?
>
> Note: all sizes above are in "samples", not "bytes".
>
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000064320305b8c9fdb7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The block ultimately determines the size of the packe=
ts that are sent out. Some block controllers (like the radio) use the spp a=
rgument to set the length that the block generates. I don&#39;t know what&#=
39;s going on in your case, but I would suggest looking at how the packet l=
ength is being controlled by the block. You could also use wireshark to con=
firm the packet length.</div><div><br></div><div>Wade<br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan =
12, 2021 at 3:47 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><di=
v>I have a custom rfnoc block that I am trying to test with the graph &quot=
;host =3D&gt; myblock =3D&gt; host&quot;.=C2=A0 &quot;myblock&quot; is supp=
osed to output packets of a given size (256) and I am trying to verify that=
 it is doing so.=C2=A0 However, in my simple application to test this graph=
, I get the following behavior:</div><div><ul><li>if I don&#39;t set &quot;=
spp&quot; in my rx_streamer args, I get packet length =3D 1989.</li><li>if =
I set &quot;spp&quot; in my rx_streamer args, I get the packet length that =
I set.=C2=A0</li><li>But, what I really want is to get packets of the same =
size as the block output.</li></ul><div>Is this something that needs to get=
 configured in my block controller?=C2=A0 Perhaps there is some packet forw=
arding policy.=C2=A0 It&#39;s a bit confusing to me.=C2=A0 How can I keep t=
he rx_streamer from changing=C2=A0the packet size that is output from my bl=
ock?</div></div><div><br></div><div>Note: all sizes above are in &quot;samp=
les&quot;, not &quot;bytes&quot;.</div><div><br></div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000064320305b8c9fdb7--


--===============7420648444888155384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7420648444888155384==--

