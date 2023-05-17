Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1459B706DCE
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 18:16:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23B773848EB
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 12:16:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684340175; bh=3QkSxB1mf+yb87JD8vdvgG3mRfs6h+7pXpYhpltf3F8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=VvU7NX2MbUL2bcKlr0uNOFaF9P54ohC+7WUn7uPzgwiZI98KROtm5pO4yDiS8AkL/
	 W1GuqMGx1XneLibUWxRRQBO8jkWIihUCE3StZd5PU1bcY93qMJFw3OhM3j19jXDKHf
	 +BcbVXUZ9mHvXHmXnF956stcCSe2et3OOh7y+NWT1mOm3hFqmNvSIMDHqUjfROxeMk
	 OszJbKbTnFjfVUJzmaCP7yrS9uFIFST8QY7tEjMdSy0TAmOlOWhQqXyjhZ+ZDc83n1
	 9AYuEUR6jOVZhpdr2J0TBfozPCABe4ZV8a2bg2nc2vZo+uUY3IPrWsgvYuVOCa3TBE
	 41RkG8imgVQ5A==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 9608B38485B
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 12:15:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rib1uAn7";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-3f4de077aaaso11250561cf.1
        for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 09:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684340148; x=1686932148;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C0bg4KJJio4k8+cFhOrxejtTM6Hxt9A21n6MocGPyhM=;
        b=rib1uAn7k46LTmRh3R2ykwIBWlIGRg4f6jdtz2zI+NWzirFfwfhvxIB0Ok/Dti49BE
         Jke7OUjKW81w/by+NyL4Af93CbkEA8ffAzP0vnvISeZKQm+i45ZmZQLhw21wpM9PNCLx
         c+ox+jWYZfnAgZlReQ0H5v1cWWoL8dnO2s8IlMK0g+tClqN2qQ4V9UtLZnb8lcw9GIYO
         Ljqyq8pkBmBxhKPbk8+WWyld9YwJQLDhuzhbU0CtjqLVRwzLcXj46NTzjw3lMSQw3jsC
         uiXAuN6mg32+MAAGa5p+5OvnUvMXyNW6u3iOuZaBwYzWpYU7MkzKyxzgjmBDGWbPlrn3
         uOPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684340148; x=1686932148;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=C0bg4KJJio4k8+cFhOrxejtTM6Hxt9A21n6MocGPyhM=;
        b=MDk85xOLYmcgI+h4ewmabc6h3qMPADJDX8KP8Yw8dsW8bt8QN/KtfxuajSyqTSQJG1
         3NoQN+g2KhlGaU+k0wxAkn1QwGl+YRqJZDVgcfqju5QkdfnTova/uvqyEwLON9ETTkUD
         BYIK+CMlmlILKdJyNA5K4OExKzzDcIqMxFGUslZmdTIIw2bIo72FArH0sgaKsOay/wV5
         wkxWqpmQHYeNWadXoj2sQ6Xwqb17UbsYJftZW4ktsbhU9+B/W3fkvenN7lMLYp05RfWw
         nOI4xb0yL4zmn4SoTCOfTw43pOV6y/hqBt+am4vKeEM38Wy3uZfuBmOsoFKXCc5sdC6N
         rrBQ==
X-Gm-Message-State: AC+VfDzviHDNEWB/2Go2cFHQghbrXxfbjG0RHIPmwTOQO9Aa5BsbHEc8
	do2DYkb3zoXhZK4y8W8eVpYdW78a1DE=
X-Google-Smtp-Source: ACHHUZ4rEnnTjvRNfSeZ9Xy2Ey6yOiszXOXedfjBLsiTmly7uWHb/YN4ARCjfUiQ4QM7GfHSpIsxvA==
X-Received: by 2002:ac8:59cf:0:b0:3f5:315f:5c19 with SMTP id f15-20020ac859cf000000b003f5315f5c19mr243786qtf.62.1684340147707;
        Wed, 17 May 2023 09:15:47 -0700 (PDT)
Received: from [192.168.2.150] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id f18-20020ac80152000000b003e3914c6839sm7255748qtg.43.2023.05.17.09.15.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 09:15:47 -0700 (PDT)
Message-ID: <ed9ddb42-5875-a0c9-43ea-faeda0c1705a@gmail.com>
Date: Wed, 17 May 2023 12:15:46 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <HNN3PyrA1XwglP4uFR0QhCewbvOFLFaBlU2GK7BaTk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <HNN3PyrA1XwglP4uFR0QhCewbvOFLFaBlU2GK7BaTk@lists.ettus.com>
Message-ID-Hash: Z5K2AFG5INUWPWUYDFSIPYTCPIHSOBSJ
X-Message-ID-Hash: Z5K2AFG5INUWPWUYDFSIPYTCPIHSOBSJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z5K2AFG5INUWPWUYDFSIPYTCPIHSOBSJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8716390897081920454=="

This is a multi-part message in MIME format.
--===============8716390897081920454==
Content-Type: multipart/alternative;
 boundary="------------ThqzJyxSdS7Hpw03G3n1wKeL"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ThqzJyxSdS7Hpw03G3n1wKeL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/05/2023 11:57, cjohnson@serranosystems.com wrote:
>
> Hi Marcus,
>
> Thank you for responding.
>
> I can confirm that the USRP (192.168.30.2) and host (192.168.30.1) are=20
> working (streaming data), as I wanted to verify before trying the=20
> remote streaming.
>
> I have added the 192.168.30.30 as second interface on the host, and it=20
> is responding to pings. I do not have any firewall, they are all the=20
> same LAN / subnet.
>
> Based on the error =E2=80=9CRequested remote UDP streaming, but transpo=
rt=20
> adapter sfp1 does not support it!=E2=80=9D, it doesn=E2=80=99t seem lik=
e the program=20
> is getting that far. I can also confirm that "sfp1=E2=80=9D is the prop=
er=20
> interface with the ipaddr 192.168.30.2.
>
> When monitoring the ethernet traffic, I never see a data packet with a=20
> source of 192.168.30.2 to a destination of 192.168.30.30.
>
>         |Proto Recv-Q Send-Q Local Address Foreign Address State |
>
>         |udp 0 0 127.0.0.53:53 0.0.0.0:* |
>
>         |udp 0 0 0.0.0.0:111 0.0.0.0:* |
>
>         |udp 0 0 0.0.0.0:631 0.0.0.0:* |
>
>         |udp 0 0 0.0.0.0:5353 0.0.0.0:* |
>
>         |udp 0 0 192.168.30.1:34602 192.168.30.2:49152 ESTABLISHED|
>
>         |udp 0 0 0.0.0.0:50237 0.0.0.0:* |
>
>         |udp 0 0 192.168.30.1:50938 192.168.30.2:49153 ESTABLISHED|
>
> I do not have an active listener on dest udp, but I also don=E2=80=99t =
see any=20
> traffic trying to set up a connection with 192.168.30.30.
>
> There are no arps (when running program):
>
>     |cjohnson@demo:~/net$ sudo tcpdump --interface=3Deno2 broadcast and
>     arp tcpdump: verbose output suppressed, use -v[v]... for full
>     protocol decode listening on eno2, link-type EN10MB (Ethernet),
>     snapshot length 262144 bytes 15:49:01.987722 ARP, Request who-has
>     192.168.30.2 tell 192.168.30.2, length 46 15:49:17.073425 ARP,
>     Request who-has 192.168.30.2 tell 192.168.30.2, length 46|
>
> There is no IP traffic with 192.168.30.30 (when program is running):
>
>     |cjohnson@demo:~/net$ sudo tcpdump --interface=3Deno2 -n host
>     192.168.30.30 tcpdump: verbose output suppressed, use -v[v]... for
>     full protocol decode listening on eno2, link-type EN10MB
>     (Ethernet), snapshot length 262144 bytes|
>
> Is there a known working example with a stream listener on the remote=20
> with a dest addr and dest udp port?
>
> Not sure if relevant, and I can=E2=80=99t find any information on what =
each of=20
> the address mean for USRP-2974, but the ip-addr0 and gateway are bogus=20
> values below. I do have streaming connection from host 192.168.30.1 to=20
> USRP 192.168.30.2, but still can=E2=80=99t get remote streaming to work=
.
>
>     || | gateway: 192.168.10.1 | | ip-addr0: 192.168.10.2 | | subnet0:
>     255.255.255.0 | | ip-addr1: 192.168.40.2 | | subnet1:
>     255.255.255.0 | | ip-addr2: 192.168.30.2 | | subnet2:
>     255.255.255.0 | | ip-addr3: 255.255.255.255 | | subnet3:
>     255.255.255.0 |
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
To clarify, are you doing this on an external host, or on the embedded=20
x86 (i7) host inside the 2974?


--------------ThqzJyxSdS7Hpw03G3n1wKeL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/05/2023 11:57,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:cjohnson@serra=
nosystems.com">cjohnson@serranosystems.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:HNN3PyrA1XwglP4uFR0QhCewbvOFLFaBlU2GK7BaTk@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus,</p>
      <p>Thank you for responding.</p>
      <p>I can confirm that the USRP (192.168.30.2) and host
        (192.168.30.1) are working (streaming data), as I wanted to
        verify before trying the remote streaming.</p>
      <p>I have added the 192.168.30.30 as second interface on the host,
        and it is responding to pings. I do not have any firewall, they
        are all the same LAN / subnet.</p>
      <p>Based on the error =E2=80=9CRequested remote UDP streaming, but
        transport adapter sfp1 does not support it!=E2=80=9D, it doesn=E2=
=80=99t seem
        like the program is getting that far. I can also confirm that
        "sfp1=E2=80=9D is the proper interface with the ipaddr 192.168.30=
.2.</p>
      <p>When monitoring the ethernet traffic, I never see a data packet
        with a source of 192.168.30.2 to a destination of 192.168.30.30.<=
/p>
      <blockquote>
        <blockquote>
          <pre><code>Proto Recv-Q Send-Q Local Address           Foreign =
Address         State      </code></pre>
          <pre><code>udp        0      0 127.0.0.53:53           0.0.0.0:=
*                          </code></pre>
          <pre><code>udp        0      0 0.0.0.0:111             0.0.0.0:=
*                          </code></pre>
          <pre><code>udp        0      0 0.0.0.0:631             0.0.0.0:=
*                          </code></pre>
          <pre><code>udp        0      0 0.0.0.0:5353            0.0.0.0:=
*                          </code></pre>
          <pre><code>udp        0      0 192.168.30.1:34602      192.168.=
30.2:49152      ESTABLISHED</code></pre>
          <pre><code>udp        0      0 0.0.0.0:50237           0.0.0.0:=
*                          </code></pre>
          <pre><code>udp        0      0 192.168.30.1:50938      192.168.=
30.2:49153      ESTABLISHED</code></pre>
        </blockquote>
      </blockquote>
      <p>I do not have an active listener on dest udp, but I also don=E2=80=
=99t
        see any traffic trying to set up a connection with
        192.168.30.30.</p>
      <p>There are no arps (when running program):</p>
      <blockquote>
        <pre><code>cjohnson@demo:~/net$ sudo tcpdump --interface=3Deno2 b=
roadcast and arp
tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
listening on eno2, link-type EN10MB (Ethernet), snapshot length 262144 by=
tes
15:49:01.987722 ARP, Request who-has 192.168.30.2 tell 192.168.30.2, leng=
th 46
15:49:17.073425 ARP, Request who-has 192.168.30.2 tell 192.168.30.2, leng=
th 46</code></pre>
      </blockquote>
      <p>There is no IP traffic with 192.168.30.30 (when program is
        running):</p>
      <blockquote>
        <pre><code>cjohnson@demo:~/net$ sudo tcpdump --interface=3Deno2 -=
n host 192.168.30.30
tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
listening on eno2, link-type EN10MB (Ethernet), snapshot length 262144 by=
tes</code></pre>
      </blockquote>
      <p>Is there a known working example with a stream listener on the
        remote with a dest addr and dest udp port?</p>
      <p>Not sure if relevant, and I can=E2=80=99t find any information o=
n what
        each of the address mean for USRP-2974, but the ip-addr0 and
        gateway are bogus values below. I do have streaming connection
        from host 192.168.30.1 to USRP 192.168.30.2, but still can=E2=80=99=
t get
        remote streaming to work.</p>
      <blockquote>
        <pre><code>|  |  gateway: 192.168.10.1

|  |  ip-addr0: 192.168.10.2

|  |  subnet0: 255.255.255.0

|  |  ip-addr1: 192.168.40.2

|  |  subnet1: 255.255.255.0

|  |  ip-addr2: 192.168.30.2

|  |  subnet2: 255.255.255.0

|  |  ip-addr3: 255.255.255.255

|  |  subnet3: 255.255.255.0


</code></pre>
      </blockquote>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    To clarify, are you doing this on an external host, or on the
    embedded x86 (i7) host inside the 2974?=C2=A0=C2=A0 <br>
    <br>
    <br>
  </body>
</html>

--------------ThqzJyxSdS7Hpw03G3n1wKeL--

--===============8716390897081920454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8716390897081920454==--
