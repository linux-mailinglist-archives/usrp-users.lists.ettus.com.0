Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2172B9B70
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 20:27:00 +0100 (CET)
Received: from [::1] (port=40126 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfpa6-000084-2w; Thu, 19 Nov 2020 14:26:58 -0500
Received: from mail-lj1-f170.google.com ([209.85.208.170]:40289)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <chfl5156@colorado.edu>)
 id 1kfpa1-0008Ff-Qa
 for usrp-users@lists.ettus.com; Thu, 19 Nov 2020 14:26:53 -0500
Received: by mail-lj1-f170.google.com with SMTP id x9so7484723ljc.7
 for <usrp-users@lists.ettus.com>; Thu, 19 Nov 2020 11:26:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=colorado.edu; s=google;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=c05I8cXHp79PWnV/BmP0P0XJE7dwKXPY9p6+i5tKSIc=;
 b=OXbSb0EJSiYXR9DWWaatdXq5SlL6Myyd4YwZ/gHcDnbHN0ZjM6uJEYCMH30rxvNXoQ
 40DfM4/bj52smPS6klKxe6OChKypor0uKje1rxw80fowMsI+mJNUlkv5FwceimZA95q1
 BcNAIznJUKLviRk9E08VitgsgTMUmu5YUFfmjNrcf3Yh8WvpPhRSvaxzTbySBO4dAxAH
 r27f5f4TK9WoniKwUn/0GEgZUf/oIBCTfHZPjoiWxpRvhcBjAB+BwfCr2MqMXwir6KGW
 TntO0lDb8yA1oWKzACN+SlVOT+I4/+xfgQEWmnIKhraEhJcGGih1/BLPN/tlohPJoNmT
 Fhyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=c05I8cXHp79PWnV/BmP0P0XJE7dwKXPY9p6+i5tKSIc=;
 b=achLjzCFYj2N8l2VkzIfAYFsGtee/ZKkKziDhe/j0kPeyvR5Q6+PystfIgcgRWVhz7
 vTikWkhrmKpX6C4T4msnakT35ic6KTFCQ3Hq43WucQUaJwkkQw+btAhuVLZhLzgKMV9T
 qhyINDmJHg5uCMsD5JicFQHSkF9ovkST0ZOdiUcBqZGL3SLPrJMn30uw6zo/jofD4BOs
 1IRdGFBl23uvy02S4gz1WGCBeF7qWUeDg5TvC+P0SSqcrh3Qc/WmhmeEQjLr247/QG2y
 vlv1zLH4RfPy3DhHMBVGTw85mvN9Oozd/0nwHIXtC7mztSEWeNzBGsV5FhH9l2RW90qT
 mnEQ==
X-Gm-Message-State: AOAM5304zc4Laz8f/ESvXYTrtrmi3embyWZqXKgkU2UiQCu6OGOhbjGf
 /YePdZV37vcy0G7IoZOpJXM9PnbDqJKrIcp/xfk/62KyIJSjmw==
X-Google-Smtp-Source: ABdhPJzAus5dg+kkVSqylatIgTQXjUdnRLsp2Dk8J1mJDxi5K3mv52EHbRALbeak/wVcRmsuiMkiyKvkeO+5IxT2230=
X-Received: by 2002:a2e:9005:: with SMTP id h5mr5924980ljg.59.1605813971912;
 Thu, 19 Nov 2020 11:26:11 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 19 Nov 2020 12:26:00 -0700
Message-ID: <CAM+cdhLHCCLtDbjih2U+fPidDXtuQjf0syty6YwuSeszQLNx+w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Ettus N310 LO IN RX Synchronization
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
From: Christopher Flood via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Christopher.Flood@colorado.edu
Content-Type: multipart/mixed; boundary="===============7191847364203459503=="
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

--===============7191847364203459503==
Content-Type: multipart/alternative; boundary="0000000000005f254c05b47ab347"

--0000000000005f254c05b47ab347
Content-Type: text/plain; charset="UTF-8"

Hi all,

I've seen some discussion about this on the email lists, but I'm still
having a bit of trouble. I'm trying to use the LO IN RX ports on the front
of the N310 to synchronize the oscillators on the two daughterboards. I was
thinking I could generate a signal on one of the TX/RX ports of the SDR and
feed that into the LO IN RX ports at the appropriate frequency and power.
However, when I test this setup in GNU Radio Companion I don't get any
meaningful data, so I must be doing something wrong.

The input signal that I want to sample is a 10MHz signal that is going into
an RX2 port on the front end of the SDR. When I set the device argument
"rx_lo_source=internal" and run it, the data I get looks exactly how I
would expect. When I change the device argument to "rx_lo_source=external"
and run it, I don't get anything that makes sense.

Am I using the LO IN RX ports correctly? The documentation doesn't say much
besides power and frequency ranges.

Any help or advice would be much appreciated.

-Chris

--0000000000005f254c05b47ab347
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;ve seen some discussion a=
bout this on the email lists, but I&#39;m still having a bit of trouble. I&=
#39;m trying to use the LO IN RX ports on the front of the N310 to synchron=
ize the oscillators on the two daughterboards. I was thinking I could gener=
ate a signal on one of the TX/RX ports of the SDR and feed that into the LO=
 IN RX ports at the appropriate frequency and power. However, when I test t=
his setup in GNU Radio Companion I don&#39;t get any meaningful=C2=A0data, =
so I must be doing something wrong.=C2=A0</div><div><br></div><div>The inpu=
t signal that I want to sample is a 10MHz signal that is going into an RX2 =
port on the front end of the SDR. When I set the device argument &quot;rx_l=
o_source=3Dinternal&quot; and run it, the data I get looks exactly how I wo=
uld expect. When I change the device argument to &quot;rx_lo_source=3Dexter=
nal&quot; and run it, I don&#39;t get anything that makes sense.=C2=A0</div=
><div><br></div><div>Am I using the LO IN RX ports correctly? The documenta=
tion doesn&#39;t say much besides power and frequency ranges.=C2=A0</div><d=
iv><br></div><div>Any help or advice would be much appreciated.</div><div><=
br></div><div>-Chris</div></div>

--0000000000005f254c05b47ab347--


--===============7191847364203459503==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7191847364203459503==--

