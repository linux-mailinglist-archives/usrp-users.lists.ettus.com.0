Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8DBAF1619
	for <lists+usrp-users@lfdr.de>; Wed,  2 Jul 2025 14:52:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 415D33861C9
	for <lists+usrp-users@lfdr.de>; Wed,  2 Jul 2025 08:51:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751460712; bh=vr5+1jvZVCxi/fpmSYvSWEfPA4eY3z7TFHbbrKXbVd4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cisusZrgigrP2Es1lIEvz3wH7bdN6CoSwB8OfDEDb7YJ45HlR23QQhwxleEQtXB2b
	 YRsuNxcAO5Dqa702Qx7fIgOffCY/S+9rWytHj6U7CnZc5SnVZvwuRy6Th/KR48J1zF
	 d7a7jT40HQv5YLvoICrcFhgN5WvCjIvvaxtOqsjkPaRkYzLhuJJnmZMtLt52xpQZLW
	 Ad4AAF1YW/FmiXZVHPqqGFOV9u3/h/JBFU9PIJJggeWn0n07qSz8n7g6J6EEeSrkEK
	 gV3v4In7eC1bgekohLCepjm5S2JDpQDUrld0usKuzErWQ7a2b2Erx2C0X//vJ3sT/s
	 /vNZx7iKW6eHg==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id D7D6A385F0F
	for <usrp-users@lists.ettus.com>; Wed,  2 Jul 2025 08:51:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Qa7N/HW2";
	dkim-atps=neutral
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e87c86845d9so2728485276.1
        for <usrp-users@lists.ettus.com>; Wed, 02 Jul 2025 05:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751460693; x=1752065493; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ddaDi2kVqmQ3wsUWGO7Dwzky7OoAp4CdOrlClouvtCs=;
        b=Qa7N/HW2PDiw/VXN8A8usD2DUBaZpErUCx4qitNupbE1/bwe6tJpJXj9pC0E+UoDsf
         7j7z1eIHPqkAB/BGhQ+5GyfxRUj5BCjSGN9y9wbi1RgwSvGgBPjZUT/KjC87iP8DCb3D
         HJZHnu3lEIveyroudd9hvXF7n7aWGM6h8yOYvB2JShzZv6Lew3HWYQIAypVFJdTc9c7j
         pKyIp5F2S3ckIs4B7Mmb6UDlMRI9cB0ttVA/b3Qjgt7Ye3w0WkwVxhY8bhWD+KCDRxbD
         OCRZOIC2sLxOIHuohClj4X8TceHqbRrOnWCa2D3C75GFlxgCk8bZ2dK5ccs0a/MVykMQ
         6wGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751460693; x=1752065493;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ddaDi2kVqmQ3wsUWGO7Dwzky7OoAp4CdOrlClouvtCs=;
        b=pOclKOjpsPo2BmjZfSqwCgz4TCSs9b3JYpAyE6IXQ273X4ckkZvOnP+WhMk7l3T5RY
         VOAZxu+ljKrVV4JNEhdU48DZWBeuwahKi5n4rtpPZNEogcXQJjnpEvOmzSfBzUlgnpvt
         0iIeoFXlF+Qt03Ljx7ggUwCtOlZESzKCliEWxnzUl4rruaX/rj+rpbOQ53mZGpMHaAxA
         s9p2EkwDM71kDH0lHdriPFnJTRSfQhn7SUNAhpulyP5qgx2/ijfR6m+0dj8NAyOHcgFH
         T+teYRXxzc6PEfNCaakKIcq+67FFurGqEpWyISCMJF6mtNN3VqS7DhQGD2coY/1yER7H
         2vBQ==
X-Gm-Message-State: AOJu0YwkHOuni012joyRv+bW3qnch5SytwP+MOrG7z9xEBW4dfNjtcga
	WLiVtuqcgW4qb0lmHztf3PogWrr12r0vjBHR0Cnwqyuxe1AyC2jU4hcT7imfWfChMTpbonBKh07
	etX5AhX9CPBnzVpB200jb8wREzDqehkwJRsFm4+A=
X-Gm-Gg: ASbGncshNSLc6bwbHymmtgiV7wqJ3VGRGeOYbk8VyRUV48SefAQ3fALmDCE4Njkx8jD
	tlC0uLWFHOpGy5tr/nJJcJavpCtt6tn/s9zO6ZA+202wxpZTegAZSAShFE5opHfYcqbvvhq+Mpe
	R7HHCBQ7+l+9yR+HK0RpIspO+DXeEcmxH76K4jdr/aDV7f
X-Google-Smtp-Source: AGHT+IE2CvBjaJcZaYr6IZiT60WjI/sr/76kZML9C2NzlbWDp9ySwvmCp8BzNgdAseWQPBxkFA7w2v99XSmZezMG/rM=
X-Received: by 2002:a05:6902:2504:b0:e81:b731:3c89 with SMTP id
 3f1490d57ef6-e897e1cc548mr3377258276.11.1751460693026; Wed, 02 Jul 2025
 05:51:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAOj5YL7_6fGk5xX4CYSdZfO3NC43ny7-+KiqUg0E9y8qRyHDNA@mail.gmail.com>
 <CAFOi1A6wO9aravAdb5SMdjfxevDpXWGfWmZUBL6Omu3t=oQtRA@mail.gmail.com> <CAOj5YL4dJaf0S+7z+k=w0-ieCjL8SkxQZ0Q2o2UOLC=_aUWR=A@mail.gmail.com>
In-Reply-To: <CAOj5YL4dJaf0S+7z+k=w0-ieCjL8SkxQZ0Q2o2UOLC=_aUWR=A@mail.gmail.com>
From: Ahmet Hes <nirkicatal1@gmail.com>
Date: Wed, 2 Jul 2025 15:51:21 +0300
X-Gm-Features: Ac12FXy4dvNgbQZeHObHBvXDCmcBmsL92iTfjU7KG3alNzSh-DJIl2AJeP48GsA
Message-ID: <CAOj5YL4C9_xxE9-cYLEMHQaYuop-dc3Qe7d_AtUMB1MnFypz5Q@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: Z53KQFCJAMXEDUWGBACYDZYDHIIR3YR3
X-Message-ID-Hash: Z53KQFCJAMXEDUWGBACYDZYDHIIR3YR3
X-MailFrom: nirkicatal1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoc Gain Block (UHD 4.8.0)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z53KQFCJAMXEDUWGBACYDZYDHIIR3YR3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3487808538621465430=="

--===============3487808538621465430==
Content-Type: multipart/alternative; boundary="000000000000722c6e0638f1b8ff"

--000000000000722c6e0638f1b8ff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*Final Update:*

I decided to ignore the warnings in GNU Radio and proceeded with the Python
script.

When I construct the graph as follows:

radio_noc_block =3D graph.get_block("0/Radio#0")
radio_block =3D uhd.rfnoc.RadioControl(radio_noc_block)
rx_streamer =3D graph.create_rx_streamer(1, uhd.usrp.StreamArgs("fc32",
"sc16"))
graph.connect("0/Radio#0", 0, rx_streamer, 0)
graph.commit()

I=E2=80=99m able to receive samples successfully.

However, when I insert my custom Gain block into the chain:

radio_noc_block =3D graph.get_block("0/Radio#0")
radio_block =3D uhd.rfnoc.RadioControl(radio_noc_block)
rx_streamer =3D graph.create_rx_streamer(1, uhd.usrp.StreamArgs("fc32",
"sc16"))
graph.connect("0/Radio#0", 0, "0/Gain#0", 0, False)
graph.connect("0/Gain#0", 0, rx_streamer, 0)
print(graph)  # Inspect the connections
graph.commit()

I no longer receive any samples.

I would really appreciate your help in identifying what might be going
wrong with the custom block connection.

--000000000000722c6e0638f1b8ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p><strong>Final Update:</strong></p>
<p>I decided to ignore the warnings in GNU Radio and proceeded with the Pyt=
hon script.</p>
<p>When I construct the graph as follows:</p><p>radio_noc_block =3D graph.g=
et_block(&quot;0/Radio#0&quot;)<br>radio_block =3D uhd.rfnoc.RadioControl(r=
adio_noc_block)<br>rx_streamer =3D graph.create_rx_streamer(1, uhd.usrp.Str=
eamArgs(&quot;fc32&quot;, &quot;sc16&quot;))<br>graph.connect(&quot;0/Radio=
#0&quot;, 0, rx_streamer, 0)<br>graph.commit()<br><br></p><p>I=E2=80=99m ab=
le to receive samples successfully.</p>
<p>However, when I insert my custom Gain block into the chain:</p><p>radio_=
noc_block =3D graph.get_block(&quot;0/Radio#0&quot;)<br>radio_block =3D uhd=
.rfnoc.RadioControl(radio_noc_block)<br>rx_streamer =3D graph.create_rx_str=
eamer(1, uhd.usrp.StreamArgs(&quot;fc32&quot;, &quot;sc16&quot;))<br>graph.=
connect(&quot;0/Radio#0&quot;, 0, &quot;0/Gain#0&quot;, 0, False)<br>graph.=
connect(&quot;0/Gain#0&quot;, 0, rx_streamer, 0)<br>print(graph) =C2=A0# In=
spect the connections<br>graph.commit()<br><br></p><p>I no longer receive a=
ny samples.</p>
<p>I would really appreciate your help in identifying what might be going w=
rong with the custom block connection.</p><p><br></p><p><br></p></div>

--000000000000722c6e0638f1b8ff--

--===============3487808538621465430==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3487808538621465430==--
