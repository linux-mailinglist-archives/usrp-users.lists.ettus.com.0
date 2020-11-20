Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3F62BAF2D
	for <lists+usrp-users@lfdr.de>; Fri, 20 Nov 2020 16:45:05 +0100 (CET)
Received: from [::1] (port=48244 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kg8ar-00027K-AX; Fri, 20 Nov 2020 10:45:01 -0500
Received: from mail-oi1-f176.google.com ([209.85.167.176]:35356)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kg8an-00021n-J8
 for usrp-users@lists.ettus.com; Fri, 20 Nov 2020 10:44:57 -0500
Received: by mail-oi1-f176.google.com with SMTP id c80so10895791oib.2
 for <usrp-users@lists.ettus.com>; Fri, 20 Nov 2020 07:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q+GFozyMax7x1s7qga4BY2aIgwmyDVSaMescRlk1YUg=;
 b=UCv5lXie0Ma8vF2PTmZAK8J6WClv1sjBCS8Ru7mTskBJHyERxCkisHH4PodUQQMZv4
 RN7I+WGMCqySlyQPOxe0GKyK8mTklpmkTf/aMm9BnSzOQlTWcUFnGdNFxljM8UAdremR
 vWUA5syO8iVOa5lEG3AOgpxtP4N4UAWGU6654rTrE4FbxKLdsx7SNQwTlf2LcQjGbxvR
 up273r961dOiEcxvL/nyvBt9cSijnq1Y8Mh5o4mjFChXVZuB6QtA1RnQsJ4+gPrDGv23
 gwFDxzz7/Slx9pSd7IVMCWqVGbT7K72xM5fYIjhOJaEfJPnmVkXU3csUTQwZstXRFuZf
 dPvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q+GFozyMax7x1s7qga4BY2aIgwmyDVSaMescRlk1YUg=;
 b=k8dOoM+eaQcVWZ7DXoKYzN/CMyb43iw3pC8MYABVmA1xTBegtwllaKNZTrsf9yvPHE
 gOSu5IXNszSKxXQCexXwcABSS+YeeCvfBL5H9nYoX+3ZAxsqjS/fDjwiMHhwh9ZvANMq
 ocgFQfjg6nH2Vk1+BMvxquqOXRLTwXRNzKQuOW1GCPIYMrPeSjZRlf027mbwZ0R4JMbf
 KfrVZzQOYWLAkoS7VZeKPm4E4lzgKrd4YjwTMVgeDAYPxxjWmsQzjHIO6x4QW6GuP7Ey
 kV115sttb/y10b5Xp92kxEtMpenhIeCganPrGD7RqPQkSQ2n0EouEclTPA/EVZ2/Sz9y
 yyGw==
X-Gm-Message-State: AOAM532J9csp8XUlck2Rc/PqVr/2ZDYkkoMM2zMC8gH9+5JZxAq/i6qy
 +vNhIa/mU2m1qyYNN9Haf2dAO4XtucVxI1EWAKyOqZrK
X-Google-Smtp-Source: ABdhPJyw0KlMJb2yH2tQ1cp+EnWpqcbzvUcy2xne41F1X6cu1Zn8M9ozgIODRDdp6FADfvAvKZ8iePR7B/Y292O94WA=
X-Received: by 2002:aca:f407:: with SMTP id s7mr6822259oih.23.1605887056709;
 Fri, 20 Nov 2020 07:44:16 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQV0xTxQxPmFpBO_5q8Og03MWVhieY2VnBhK9UTE5fVfZw@mail.gmail.com>
In-Reply-To: <CAG16vQV0xTxQxPmFpBO_5q8Og03MWVhieY2VnBhK9UTE5fVfZw@mail.gmail.com>
Date: Fri, 20 Nov 2020 09:44:06 -0600
Message-ID: <CAFche=gpYoYXydtJkmVaGA9xA4e7u6a7R-FdQ894W0dj=2CaaA@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] FPGA RFNoC Radio block with only one channel
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
Content-Type: multipart/mixed; boundary="===============8648882279081445096=="
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

--===============8648882279081445096==
Content-Type: multipart/alternative; boundary="0000000000009097d905b48bb77d"

--0000000000009097d905b48bb77d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maria,

I assume you're using UHD 3.15 or earlier, since you mentioned the "fpga
repository". I've never tried what you're suggesting, so I don't know what
challenges you'll run into. I think changing NUM_CHANNELS_PER_RADIO will do
what you want, but it will have some side effects, like removing the GPIO
for that channel. I think it might be safer to just change the NUM_CHANNELS
that gets passed to e320_core, since I think that will remove just the
radio and associated DDC/DUC while leaving all the other board signals
connected. Again, I haven't tried it, so I can't say for sure.

In general, these kinds of changes need to be considered carefully, since
it leaves signals undriven, which usually means they will be driven to 0 by
default. 0 is often the right value for something that's unused, but not
always. There may also be software implications.

By the way, these kinds of changes are easier to make in UHD 4.0 since it's
described by a YAML file. So it's easy to say you just want one radio and
to leave out the DDC/DUC, or DRAM FIFO, for example. The required Verilog
is then generated by rfnoc_image_builder.

Thanks,

Wade

On Thu, Nov 19, 2020 at 8:52 AM Maria Mu=C3=B1oz via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone,
>
> I'm using an USRP E320 using the RFNoC image to implement a code that
> requires too much FPGA resources. I only need to use one of the channels =
of
> the USRP so I was wondering if it could be possible to eliminate the logi=
c
> associated with the other channel to save resources on the FPGA and if
> there is a 'safe' way to do that.
>  I mean I have seen on the verilog source code, that there is a parameter
> 'NUM_CHANNELS_PER_RADIO' (e320.v on fpga repository) which configures the
> channels of the radio, but what happens with the tx_i1, tx_q1, rx_i1 and
> rx_1q signals that goes to the LVDS interface with the ADC? Can they be
> left unconnected?  Is there another parameter that I must change to use
> only one channel and eliminate the 'extra' logic?
>
> Kind Regards,
>
> Maria
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009097d905b48bb77d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Maria,</div><div><br></div><div>
I assume you&#39;re using UHD 3.15 or earlier, since you mentioned the &quo=
t;fpga repository&quot;.

I&#39;ve never tried what you&#39;re suggesting, so I don&#39;t know what c=
hallenges you&#39;ll run into. I think changing NUM_CHANNELS_PER_RADIO will=
 do what you want, but it will have some side effects, like removing the GP=
IO for that channel. I think it might be safer to just change the NUM_CHANN=
ELS that gets passed to e320_core, since I think that will remove just the =
radio and associated DDC/DUC while leaving all the other board signals conn=
ected. Again, I haven&#39;t tried it, so I can&#39;t say for sure.<br></div=
><div><br></div><div>In general, these kinds of changes need to be consider=
ed carefully, since it leaves signals undriven, which usually means they wi=
ll be driven to 0 by default. 0 is often the right value for something that=
&#39;s unused, but not always. There may also be software implications.<br>=
</div><div><br></div>By the way, these kinds of changes are easier to make =
in UHD 4.0 since it&#39;s described by a YAML file. So it&#39;s easy to say=
 you just want one radio and to leave out the DDC/DUC, or DRAM FIFO, for ex=
ample. The required Verilog is then generated by rfnoc_image_builder.<br><d=
iv><br></div><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, No=
v 19, 2020 at 8:52 AM Maria Mu=C3=B1oz via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi =
everyone,<div><br></div><div>I&#39;m using an USRP E320=20

 using the RFNoC image

to implement a code that requires too much FPGA resources. I only need to u=
se one of the channels of the USRP so I was wondering if it could be possib=
le to eliminate the logic associated with the other channel=C2=A0to save re=
sources on the FPGA and if there is a &#39;safe&#39; way to do that.</div><=
div>=C2=A0I mean I have seen on the verilog source code, that there is a pa=
rameter &#39;NUM_CHANNELS_PER_RADIO&#39; (e320.v on fpga repository) which =
configures the channels of the radio, but what happens with the tx_i1, tx_q=
1, rx_i1 and rx_1q signals that goes to the LVDS interface with the ADC? Ca=
n they be left unconnected?=C2=A0 Is there another parameter that I must ch=
ange to use only one channel and eliminate the &#39;extra&#39; logic?</div>=
<div><br></div><div>Kind Regards,</div><div><br></div><div>Maria=C2=A0</div=
></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009097d905b48bb77d--


--===============8648882279081445096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8648882279081445096==--

