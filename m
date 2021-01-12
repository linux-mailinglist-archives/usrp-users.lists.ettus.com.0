Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0E12F3BE7
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jan 2021 22:47:48 +0100 (CET)
Received: from [::1] (port=43150 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzRVx-0001IV-Ks; Tue, 12 Jan 2021 16:47:45 -0500
Received: from mail-oi1-f177.google.com ([209.85.167.177]:34481)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kzRVt-0001CM-8A
 for usrp-users@lists.ettus.com; Tue, 12 Jan 2021 16:47:41 -0500
Received: by mail-oi1-f177.google.com with SMTP id s75so3994920oih.1
 for <usrp-users@lists.ettus.com>; Tue, 12 Jan 2021 13:47:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=BL6cUZPcMOUll3pA9DxWLq+ReYl1lqiGhQUqPxGelyY=;
 b=I+RI+OiyAKmGtV06jRg/sx6iKd6J8PZGsZ7t9AkIb+DzhtostXHh9Lzy5UKUfmyWcw
 jGxyO1/gPYragwW1Oq7+7aKd5t56DrqVR4UH5+7qBVoAQ88qEO6sW9jiGeg84DZUW/8J
 KueX8dkQiOMQNLIAq2oGFEZBlGGD6v8HDkOsgfsMSEjqJiwu3BZtv07xqC7XeGzx9QVE
 P26XCZChGdrzxqqVWx6b1WQEbpASO9DGcokXX46vXg+fb8yHQsI7DDEtpL6hVs23tSnc
 NNB0TtRM+TpOMVMHYofgISBKCoqWhNJNXTiTipvxz963DZwHxhlg2HR5hmYG7wUmbL6K
 AbpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BL6cUZPcMOUll3pA9DxWLq+ReYl1lqiGhQUqPxGelyY=;
 b=eBlvxSjb9WcKemX9KD+RJwcwneaXIkm/RfiqU/B8F1XMzoLzpJA8srpA0jeM8W1PMt
 BgBX2yQv++izXMqSb1xOF1qAQz92FgmN/6ZI5jmmQnDaY8WcNdTLtj3vtvJvbIcu4XFy
 pIrz49VEsY8OQdzOn4+C+Bp/sA5xRlBr7C/5pBG+jpqrEnUkT2y90B5afu7DgO/MMX1K
 tvwD+v2jwgvkoVH1oRFjD95ZlxjdcdfkqE6XoY/2S3GkPA6TOxAgIO4qMXHXLG+kXGMJ
 Dk6R9z/9phSrWIOJzzpFz9oR2dSRc4AoNWxPm2gmjoYIQssc45kZC3QgtDh5qBdqdttp
 tpGQ==
X-Gm-Message-State: AOAM533mQwxhK1NCX3Qcmw9ZFg0bkZqFF3fs4ZFvf7sB9jLAuk65gJuz
 rAJ1W10zsMpI3vibZacVLwiT93lHZRysk8eJ3PZoJiBsHUuUrQ==
X-Google-Smtp-Source: ABdhPJwWm8WkbIoIDzQ02OFEim3MeyopDsap5Ys41d8YFgqzCrI634I6ha3gIRcDsb4k6TE/APTK8EJQP1e6v/qbJjs=
X-Received: by 2002:a05:6808:9a:: with SMTP id
 s26mr753001oic.124.1610488019884; 
 Tue, 12 Jan 2021 13:46:59 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 12 Jan 2021 16:46:49 -0500
Message-ID: <CAB__hTT7xrij++hgMQj_RYCa3GMAjj8znAmSg68Yhj=miM=jkg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Packet length control in rx_streamer
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
Content-Type: multipart/mixed; boundary="===============3728805743657158850=="
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

--===============3728805743657158850==
Content-Type: multipart/alternative; boundary="00000000000057701405b8baf69f"

--00000000000057701405b8baf69f
Content-Type: text/plain; charset="UTF-8"

Hi,
I have a custom rfnoc block that I am trying to test with the graph "host
=> myblock => host".  "myblock" is supposed to output packets of a given
size (256) and I am trying to verify that it is doing so.  However, in my
simple application to test this graph, I get the following behavior:

   - if I don't set "spp" in my rx_streamer args, I get packet length =
   1989.
   - if I set "spp" in my rx_streamer args, I get the packet length that I
   set.
   - But, what I really want is to get packets of the same size as the
   block output.

Is this something that needs to get configured in my block controller?
Perhaps there is some packet forwarding policy.  It's a bit confusing to
me.  How can I keep the rx_streamer from changing the packet size that is
output from my block?

Note: all sizes above are in "samples", not "bytes".

Rob

--00000000000057701405b8baf69f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I have a custom rfnoc block that I am trying t=
o test with the graph &quot;host =3D&gt; myblock =3D&gt; host&quot;.=C2=A0 =
&quot;myblock&quot; is supposed to output packets of a given size (256) and=
 I am trying to verify that it is doing so.=C2=A0 However, in my simple app=
lication to test this graph, I get the following behavior:</div><div><ul><l=
i>if I don&#39;t set &quot;spp&quot; in my rx_streamer args, I get packet l=
ength =3D 1989.</li><li>if I set &quot;spp&quot; in my rx_streamer args, I =
get the packet length that I set.=C2=A0</li><li>But, what I really want is =
to get packets of the same size as the block output.</li></ul><div>Is this =
something that needs to get configured in my block controller?=C2=A0 Perhap=
s there is some packet forwarding policy.=C2=A0 It&#39;s a bit confusing to=
 me.=C2=A0 How can I keep the rx_streamer from changing=C2=A0the packet siz=
e that is output from my block?</div></div><div><br></div><div>Note: all si=
zes above are in &quot;samples&quot;, not &quot;bytes&quot;.</div><div><br>=
</div><div>Rob</div></div>

--00000000000057701405b8baf69f--


--===============3728805743657158850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3728805743657158850==--

