Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEBD2F4F99
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 17:12:47 +0100 (CET)
Received: from [::1] (port=51440 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzilI-0002On-4y; Wed, 13 Jan 2021 11:12:44 -0500
Received: from mail-ot1-f52.google.com ([209.85.210.52]:38481)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kzilE-0002IG-D6
 for usrp-users@lists.ettus.com; Wed, 13 Jan 2021 11:12:40 -0500
Received: by mail-ot1-f52.google.com with SMTP id j20so2375573otq.5
 for <usrp-users@lists.ettus.com>; Wed, 13 Jan 2021 08:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dCMQ46CYaAto7F7Gtenhv8FCBJWK3wECi6m6ezm9bVE=;
 b=Ik0asePUIxx+0xiUbBhejQ5Z0DxiCBTgVGNnBYuseDAaUrFyKOrg+RDu0uQgneF8s7
 V4RkiU9ymw+9dJfnXojGSwdZNyi8LzkfbqPKFWhaABmm2SsAXY45mZXQf5iBojWq6F1o
 Lvq6iJzI29+H0PAgDCsRV+ISudfYPhUfxbXYIPS1gGniFzv6k9NzkqI+Yz2aT9qWahwH
 mbcBr27EvxNDMcHTusjslAWwG95h6h8ZruP7Ihl4GpH5rJb7FlYeYxGucTVoIuU66Sf0
 n90Sf2qwPCn+lsyZshREP8INMs48TdRU3mdBMNF6J2hmclEyo4d+XazPTyF+mmBa5DWA
 8f5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dCMQ46CYaAto7F7Gtenhv8FCBJWK3wECi6m6ezm9bVE=;
 b=PRcIqS+8ZWzQGYMdWsOB41uCHMzxrINuiJYPKIBTWuE8UsDg+5ehfFc3T1fJpteXwH
 SRBD8dxZfih9c+TXnLYRbX3dN80jP3iOE2fLkakFbUug8mdRhAwmRgXSeXqFlg7qBqGb
 b5q+TPR06mtGpHPXcTfVNxMKZKnQKLF/jUlAtRl0jpWvojYStscgIiesTiMuu59Q11mU
 kEQSGGQZiJVq08hPzhOoyYdLm8rugbJTvdrab9GOt3PlnIrpr/dwnR7CrCF5EuUSmdxV
 t4X9pESNmCYcGvT/chhIhQAHuFubOzp5rDMziWhaA4ZGxo9yDpf3L43xwNLKUwYu/ysJ
 7K1A==
X-Gm-Message-State: AOAM532XB8bZdq6d7EZzD3xVng8Xjl7biSAfn35pZxWi4ljBzz+9Omex
 ZrinGE019IUfWCaw215h85FNa22WHjC5pPcPOo+bEgs2
X-Google-Smtp-Source: ABdhPJwPkZUxD2URjwCGfgCfBkqberB3fKhVN4fLJoGlq2zdhkMdZUChwYklBhwmByTX0sqWtpJcG6u/T/YQthyIOb8=
X-Received: by 2002:a9d:19aa:: with SMTP id k39mr1696734otk.28.1610554319673; 
 Wed, 13 Jan 2021 08:11:59 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT7xrij++hgMQj_RYCa3GMAjj8znAmSg68Yhj=miM=jkg@mail.gmail.com>
 <CAFche=iZrigG8r3+2DdvGunazqNSayAp55Qm56Od=Y_XCgOOoA@mail.gmail.com>
 <CAB__hTQFdAKNK4vg8fXjzHgMw307qubbJkcHVbB3P6E81xeaPg@mail.gmail.com>
In-Reply-To: <CAB__hTQFdAKNK4vg8fXjzHgMw307qubbJkcHVbB3P6E81xeaPg@mail.gmail.com>
Date: Wed, 13 Jan 2021 10:11:50 -0600
Message-ID: <CAFche=jNrZcdi7soXefgw9+6TbumW7f7WEmgqBKYgKhaDUwHNQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5905805666163394474=="
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

--===============5905805666163394474==
Content-Type: multipart/alternative; boundary="0000000000001db0d105b8ca66e9"

--0000000000001db0d105b8ca66e9
Content-Type: text/plain; charset="UTF-8"

I don't think the streamer changes the packet size. I believe what the
block sends is what goes out on the wire (plus network headers). I wonder
if the size is not being set correctly by the block, or maybe the way
you're checking the length isn't looking at the actual packet size? That's
why I suggested wireshark as an option.

Wade

On Wed, Jan 13, 2021 at 9:47 AM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Wade,
> Right. The block controls the packet size.  But, I am attempting to verify
> that my block is actually behaving properly with respect to this packet
> length.  In order to test this, I created a graph "host => myblock => host"
> and I am looking at the packet sizes I receive on the host. However, I am
> being stymied by the rx_streamer (and/or SEP) which is preventing me from
> seeing the packet size output from my block because the streamer is
> changing it.  How, do I keep the streamer from changing it?
> Rob
>
> On Wed, Jan 13, 2021 at 10:42 AM Wade Fife <wade.fife@ettus.com> wrote:
>
>> The block ultimately determines the size of the packets that are sent
>> out. Some block controllers (like the radio) use the spp argument to set
>> the length that the block generates. I don't know what's going on in your
>> case, but I would suggest looking at how the packet length is being
>> controlled by the block. You could also use wireshark to confirm the packet
>> length.
>>
>> Wade
>>
>> On Tue, Jan 12, 2021 at 3:47 PM Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>> I have a custom rfnoc block that I am trying to test with the graph
>>> "host => myblock => host".  "myblock" is supposed to output packets of a
>>> given size (256) and I am trying to verify that it is doing so.  However,
>>> in my simple application to test this graph, I get the following behavior:
>>>
>>>    - if I don't set "spp" in my rx_streamer args, I get packet length =
>>>    1989.
>>>    - if I set "spp" in my rx_streamer args, I get the packet length
>>>    that I set.
>>>    - But, what I really want is to get packets of the same size as the
>>>    block output.
>>>
>>> Is this something that needs to get configured in my block controller?
>>> Perhaps there is some packet forwarding policy.  It's a bit confusing to
>>> me.  How can I keep the rx_streamer from changing the packet size that is
>>> output from my block?
>>>
>>> Note: all sizes above are in "samples", not "bytes".
>>>
>>> Rob
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--0000000000001db0d105b8ca66e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I don&#39;t think the streamer changes the packet siz=
e. I believe what the block sends is what goes out on the wire (plus networ=
k headers).=20


I wonder if the size is not being set correctly by the block, or maybe the =
way you&#39;re checking the length isn&#39;t looking at the actual packet s=
ize?=20
That&#39;s why I suggested wireshark as an option.

</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 13, 2021 at 9:47 AM Rob=
 Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div dir=3D"ltr">Hi Wade,<div>Right. The block controls the packet siz=
e.=C2=A0 But, I am attempting to verify that my block is actually behaving =
properly with respect to this packet length.=C2=A0 In order to test this, I=
 created a graph &quot;host =3D&gt; myblock =3D&gt; host&quot; and I am loo=
king at the packet sizes I receive on the host. However, I am being stymied=
 by the rx_streamer (and/or SEP) which is preventing me from seeing the pac=
ket size output from my block because the streamer is changing it.=C2=A0 Ho=
w, do I keep the streamer from changing it?</div><div>Rob</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan =
13, 2021 at 10:42 AM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" t=
arget=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>The block ultimat=
ely determines the size of the packets that are sent out. Some block contro=
llers (like the radio) use the spp argument to set the length that the bloc=
k generates. I don&#39;t know what&#39;s going on in your case, but I would=
 suggest looking at how the packet length is being controlled by the block.=
 You could also use wireshark to confirm the packet length.</div><div><br><=
/div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Jan 12, 2021 at 3:47 PM Rob Kossler via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I have a custom rfn=
oc block that I am trying to test with the graph &quot;host =3D&gt; myblock=
 =3D&gt; host&quot;.=C2=A0 &quot;myblock&quot; is supposed to output packet=
s of a given size (256) and I am trying to verify that it is doing so.=C2=
=A0 However, in my simple application to test this graph, I get the followi=
ng behavior:</div><div><ul><li>if I don&#39;t set &quot;spp&quot; in my rx_=
streamer args, I get packet length =3D 1989.</li><li>if I set &quot;spp&quo=
t; in my rx_streamer args, I get the packet length that I set.=C2=A0</li><l=
i>But, what I really want is to get packets of the same size as the block o=
utput.</li></ul><div>Is this something that needs to get configured in my b=
lock controller?=C2=A0 Perhaps there is some packet forwarding policy.=C2=
=A0 It&#39;s a bit confusing to me.=C2=A0 How can I keep the rx_streamer fr=
om changing=C2=A0the packet size that is output from my block?</div></div><=
div><br></div><div>Note: all sizes above are in &quot;samples&quot;, not &q=
uot;bytes&quot;.</div><div><br></div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--0000000000001db0d105b8ca66e9--


--===============5905805666163394474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5905805666163394474==--

