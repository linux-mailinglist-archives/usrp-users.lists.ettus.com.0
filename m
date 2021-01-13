Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3172F4FED
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 17:25:46 +0100 (CET)
Received: from [::1] (port=51548 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzixq-00036h-Tc; Wed, 13 Jan 2021 11:25:42 -0500
Received: from mail-ot1-f47.google.com ([209.85.210.47]:39031)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kzixn-0002zp-7D
 for usrp-users@lists.ettus.com; Wed, 13 Jan 2021 11:25:39 -0500
Received: by mail-ot1-f47.google.com with SMTP id d8so2424425otq.6
 for <usrp-users@lists.ettus.com>; Wed, 13 Jan 2021 08:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R2NwEmsEA/Vbev1VCi4VQ7QffQn0g2xZ8b3HdjneQ+U=;
 b=FXXKuYnskfEZHRVR5tSYlDh6Eg8ETgsWi/igbUY7tVZ3H87UWsWz0e8BZIxR5vaqB8
 ddPdK7yUy+MIpJIjfeEf3beE1+fcUd7u4GqzoaQUsbAIACcp+gOh+b+nT4Wnq/aee/fm
 PCWUqZQpcY6wA5e0K+33Q3CKcVYT4cLp9J4wSSfFimThZA7Cw33TrkJwu2kzy4igwcSN
 U76dmFBnOu4SzQy2DWMupDBJIC/n4FZYNc74dWFW2w181vxKuzdmD6k3mryQNrq2Iq8Q
 fXsz3YAKXrr6lk+7CDdVUmJIWZS8NSHkAD3pD3AezuZBpt796nHtSDpiHlRHM5skzsjK
 rVgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R2NwEmsEA/Vbev1VCi4VQ7QffQn0g2xZ8b3HdjneQ+U=;
 b=otpJys0Pa6MY5cldtlbPq7ZjE78/u1yShavaeEn9C8Jd0ArnKoT0aDrQyH7s2G6a7E
 0C4JQF4gNE0CIOwk9jV1pebeBrIMQ1C3T0kXrwGGj/AaDuTOW6bMO4iGBnANi7d2MUc7
 hXQZ+6ngKHcHhTew2tXrColiR3MDU80OztGQUbhyvt8Dj42R1+nY7X/HN/1KccL+J19Z
 xCjuEloPzDNbZosGAPiHz76RmDOuILyTnHsIfXLjZ6wuK0ajngY4M6YG17L7ixysXi4E
 XN8whUaVSMRgizzlg4DSqXnlrck+XhLDbbMI6qyaM3JNxFGfB8RhgtVxxEdMm3H+XjAl
 bIrQ==
X-Gm-Message-State: AOAM532bGAPF6c2Q3KvXyK5oS+Hqz9mvjEii3UweMyCr3GA2fqQuuhO6
 DuZ2CWn8ASni58PlmbMGo9tyRJjsemq+8uGJhTxzuQ==
X-Google-Smtp-Source: ABdhPJzMsINF+uXTz7Zb6NX7odGjFRFa1VCRow/cnMreU9bXaCa4NXoPiEu3h3/WdN5ePSaFvoY+Tf1wQ1VhOYvG0Zk=
X-Received: by 2002:a05:6830:1587:: with SMTP id
 i7mr1702166otr.301.1610555098233; 
 Wed, 13 Jan 2021 08:24:58 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT7xrij++hgMQj_RYCa3GMAjj8znAmSg68Yhj=miM=jkg@mail.gmail.com>
 <CAFche=iZrigG8r3+2DdvGunazqNSayAp55Qm56Od=Y_XCgOOoA@mail.gmail.com>
 <CAB__hTQFdAKNK4vg8fXjzHgMw307qubbJkcHVbB3P6E81xeaPg@mail.gmail.com>
 <CAFche=jNrZcdi7soXefgw9+6TbumW7f7WEmgqBKYgKhaDUwHNQ@mail.gmail.com>
In-Reply-To: <CAFche=jNrZcdi7soXefgw9+6TbumW7f7WEmgqBKYgKhaDUwHNQ@mail.gmail.com>
Date: Wed, 13 Jan 2021 11:24:47 -0500
Message-ID: <CAB__hTQ8YgcPozKwjWo7G4qH_YV+tZJBy8+PoXQL0VeCe6nSYw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============9141098443457214671=="
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

--===============9141098443457214671==
Content-Type: multipart/alternative; boundary="00000000000085c00705b8ca94d1"

--00000000000085c00705b8ca94d1
Content-Type: text/plain; charset="UTF-8"

Wade,
It is very possible that the FPGA side is doing exactly what you are saying
and keeping the packet size intact as it goes over the wire.  The only
reason I mentioned SEP in my previous email was that I wasn't sure one way
or another.  But, the UHD side of things could clearly manipulate packet
sizes as well prior to returning a "packet" via the rx_streamer->recv()
function.  So, while you are right that I could install and learn how to
use wireshark, my question was perhaps more related to the use of
rx_streamer such that I wouldn't have to.

In my present SW, I ask the recv() function to return
rx_streamer->get_max_num_samps() and this effectively becomes my recv()
packet length. I had expected that rx_streamer->get_max_num_samps() would
use some graph propagation forwarding policy to determine what the packet
length would be.  In other words, if the Radio has SPP=567 and the
rx_streamer is connected directly to the Radio, I would expect
rx_streamer->get_max_num_samps() to return the value 567.  But, maybe this
assumption is not correct.

Rob

On Wed, Jan 13, 2021 at 11:12 AM Wade Fife <wade.fife@ettus.com> wrote:

> I don't think the streamer changes the packet size. I believe what the
> block sends is what goes out on the wire (plus network headers). I wonder
> if the size is not being set correctly by the block, or maybe the way
> you're checking the length isn't looking at the actual packet size? That's
> why I suggested wireshark as an option.
>
> Wade
>
> On Wed, Jan 13, 2021 at 9:47 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Wade,
>> Right. The block controls the packet size.  But, I am attempting to
>> verify that my block is actually behaving properly with respect to this
>> packet length.  In order to test this, I created a graph "host => myblock
>> => host" and I am looking at the packet sizes I receive on the host.
>> However, I am being stymied by the rx_streamer (and/or SEP) which is
>> preventing me from seeing the packet size output from my block because the
>> streamer is changing it.  How, do I keep the streamer from changing it?
>> Rob
>>
>> On Wed, Jan 13, 2021 at 10:42 AM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> The block ultimately determines the size of the packets that are sent
>>> out. Some block controllers (like the radio) use the spp argument to set
>>> the length that the block generates. I don't know what's going on in your
>>> case, but I would suggest looking at how the packet length is being
>>> controlled by the block. You could also use wireshark to confirm the packet
>>> length.
>>>
>>> Wade
>>>
>>> On Tue, Jan 12, 2021 at 3:47 PM Rob Kossler via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi,
>>>> I have a custom rfnoc block that I am trying to test with the graph
>>>> "host => myblock => host".  "myblock" is supposed to output packets of a
>>>> given size (256) and I am trying to verify that it is doing so.  However,
>>>> in my simple application to test this graph, I get the following behavior:
>>>>
>>>>    - if I don't set "spp" in my rx_streamer args, I get packet length
>>>>    = 1989.
>>>>    - if I set "spp" in my rx_streamer args, I get the packet length
>>>>    that I set.
>>>>    - But, what I really want is to get packets of the same size as the
>>>>    block output.
>>>>
>>>> Is this something that needs to get configured in my block controller?
>>>> Perhaps there is some packet forwarding policy.  It's a bit confusing to
>>>> me.  How can I keep the rx_streamer from changing the packet size that is
>>>> output from my block?
>>>>
>>>> Note: all sizes above are in "samples", not "bytes".
>>>>
>>>> Rob
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--00000000000085c00705b8ca94d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Wade,=C2=A0<div>It is very possible that the FPGA side is =
doing exactly what you are saying and keeping the packet size intact as it =
goes over the wire.=C2=A0 The only reason I mentioned SEP in my previous em=
ail was that I wasn&#39;t sure one way or another.=C2=A0 But, the UHD side =
of things could clearly manipulate packet sizes as well prior to returning =
a &quot;packet&quot; via the rx_streamer-&gt;recv() function.=C2=A0 So, whi=
le you are right that I could install and learn how to use wireshark, my qu=
estion was perhaps more related to the use of rx_streamer such that I would=
n&#39;t have to.=C2=A0=C2=A0</div><div><br></div><div>In my present SW, I a=
sk the recv() function to return rx_streamer-&gt;get_max_num_samps() and th=
is effectively becomes my recv() packet length. I had expected that rx_stre=
amer-&gt;get_max_num_samps() would use some graph propagation forwarding po=
licy to determine what the packet length would be.=C2=A0 In other words, if=
 the Radio has SPP=3D567 and the rx_streamer is connected directly to the R=
adio, I would expect rx_streamer-&gt;get_max_num_samps() to return the valu=
e 567.=C2=A0 But, maybe this assumption is not correct.</div><div><br></div=
><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Jan 13, 2021 at 11:12 AM Wade Fife &lt;<a href=3D"m=
ailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>I don&#39;t think the streamer changes the packet size. I believ=
e what the block sends is what goes out on the wire (plus network headers).=
=20


I wonder if the size is not being set correctly by the block, or maybe the =
way you&#39;re checking the length isn&#39;t looking at the actual packet s=
ize?=20
That&#39;s why I suggested wireshark as an option.

</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 13, 2021 at 9:47 AM Rob=
 Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@=
nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Wade,<div>Right. The block contr=
ols the packet size.=C2=A0 But, I am attempting to verify that my block is =
actually behaving properly with respect to this packet length.=C2=A0 In ord=
er to test this, I created a graph &quot;host =3D&gt; myblock =3D&gt; host&=
quot; and I am looking at the packet sizes I receive on the host. However, =
I am being stymied by the rx_streamer (and/or SEP) which is preventing me f=
rom seeing the packet size output from my block because the streamer is cha=
nging it.=C2=A0 How, do I keep the streamer from changing it?</div><div>Rob=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, Jan 13, 2021 at 10:42 AM Wade Fife &lt;<a href=3D"mailto:wade=
.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
>The block ultimately determines the size of the packets that are sent out.=
 Some block controllers (like the radio) use the spp argument to set the le=
ngth that the block generates. I don&#39;t know what&#39;s going on in your=
 case, but I would suggest looking at how the packet length is being contro=
lled by the block. You could also use wireshark to confirm the packet lengt=
h.</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 12, 2021 at 3:47 PM R=
ob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
 target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I=
 have a custom rfnoc block that I am trying to test with the graph &quot;ho=
st =3D&gt; myblock =3D&gt; host&quot;.=C2=A0 &quot;myblock&quot; is suppose=
d to output packets of a given size (256) and I am trying to verify that it=
 is doing so.=C2=A0 However, in my simple application to test this graph, I=
 get the following behavior:</div><div><ul><li>if I don&#39;t set &quot;spp=
&quot; in my rx_streamer args, I get packet length =3D 1989.</li><li>if I s=
et &quot;spp&quot; in my rx_streamer args, I get the packet length that I s=
et.=C2=A0</li><li>But, what I really want is to get packets of the same siz=
e as the block output.</li></ul><div>Is this something that needs to get co=
nfigured in my block controller?=C2=A0 Perhaps there is some packet forward=
ing policy.=C2=A0 It&#39;s a bit confusing to me.=C2=A0 How can I keep the =
rx_streamer from changing=C2=A0the packet size that is output from my block=
?</div></div><div><br></div><div>Note: all sizes above are in &quot;samples=
&quot;, not &quot;bytes&quot;.</div><div><br></div><div>Rob</div></div>
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
</blockquote></div>

--00000000000085c00705b8ca94d1--


--===============9141098443457214671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9141098443457214671==--

