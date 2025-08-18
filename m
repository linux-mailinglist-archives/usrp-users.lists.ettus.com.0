Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0CBB2B3FF
	for <lists+usrp-users@lfdr.de>; Tue, 19 Aug 2025 00:13:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33B0438611C
	for <lists+usrp-users@lfdr.de>; Mon, 18 Aug 2025 18:13:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755555225; bh=j0q3M32Pk+/8zmAMwYQR8dWzp2FGcJK+ASvgIiuL0ZM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=078ivqg1lcGR5d9pWteaQzteUdPQtYp1GBd2QQJN+D/6BAGMJnAqMVLobiZJcBTCD
	 pPW+IAOlWbDKhiFRu9TvBjA4Oy4+5CB7A2Kpg6va6FqKkkVmKMhumpJaAgkQBmPgdh
	 XHqErD4v5z+qkTDsRr7DFAOuVmCJuAHo/SpHLwTxrhYyBKp90WVpgRgWLirDRFFstd
	 gOAwPPLbrqqPJv7RwqufCZgP9izwoySFmu1CIJHEH5bYV6wCnttLNxGXO7Q4cUG04a
	 78KOZggIe9RDF6CRfeCqySTuNtO+lSCOE0RJAvJVJYmRpo25GsH/8Clr6DxCq9vZoL
	 3C8bGQEVKnADg==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D9D8385EFE
	for <usrp-users@lists.ettus.com>; Mon, 18 Aug 2025 18:13:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QQCg2ZAY";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-70a927d4aaaso39900896d6.1
        for <usrp-users@lists.ettus.com>; Mon, 18 Aug 2025 15:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755555186; x=1756159986; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PgnB1TegkpRriXbZ/F+nBCvRD3MFWyh/NQ1BzDrdsQs=;
        b=QQCg2ZAYJqg/C4Qky6Mn2wdHONN+q3wudiLDMY0s2z8p8740fDNfTUNSUy2sL2qYyJ
         GhKc5Qp6c+Nw3sgEPQH6G95TYQqkOZNaM11dELlKIMCevpM1FW+CtV8n5sVdbhtJWHkc
         uLPze5BCTeuLXHJnhsrm/BAA2V4LJ/LDiKZcKOyyC73xYIecoSrGFgeWDQWouJxhcGRx
         t0g6RwUnlMx3zEe5aI8sWHIIuV2j1KzCEYusQtsIsozbdqfdpzZ3qZ4dNtC1uH/RR8+T
         Qq/ELeBUuEIiN5/o7GExKfyRHrKiMKI+dPsGsbrx3AVgtmVtAWVwmTh+4fqLg2OXyHyS
         O/5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755555186; x=1756159986;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PgnB1TegkpRriXbZ/F+nBCvRD3MFWyh/NQ1BzDrdsQs=;
        b=Ka1adNOKT71P0m5/tFE5VfwAqWcrPx+GbHzFIvJBsDZDYr0TBdUc+sCs0J9ldQBJps
         ojXp+gyInZnVsZbqE4aCJ53MdhFTfEq4IKyzsCdIKjKGEzLCvDDUMu06/rceIVTHVf6p
         vvYuvZOCpE5J90+LGuQZV1MSrdLSfTlw5JoVWas/UTykTgW/2Jrs1WvhL45ensyN1BsK
         uszTAYpwsZ2cOCVv5iscJkShopQFqie7w/yQXQ13WwED1Q4YvCsQpoZEvVYes9y22de+
         hH0vtEybObH3YjGIJ+XmIqQcipr/2Ud00DDtzxFn73gTnTsL9SK58hbnSU3/J5MPr4vA
         A7Uw==
X-Gm-Message-State: AOJu0YxtfTayICaPBCfTxzEaoPs9OwHDczL+t481aAy9fB6HtT7b7Tn3
	4Yzv3bfVvawtd9X7Wm1Mvs3srgKLAoi+ERyqEoyFDc+Cj2JoBG2Mrrks82S1zw==
X-Gm-Gg: ASbGncsjR1Mf2SHNtsGVc3rmLcF/vohFeRJyhDY+TNamN55efWScOfATQhZeuaeozip
	zYjNBwaqNv6uwJhLwRfAPcqVr10yn+n0jqnzlmEb6p08DWYObx3eTQRFTMHdGf3fx3fQ/NfuQm2
	qAnSOuAK+JPRcjJaFRCRFuwU0MKwQvf8Dz4qBXSw8HkqkGaRvV+GL1SO5PLUJYDACqLNNbSR7Zx
	vJxtW39MErceS5JXUYQuMlG59ATa0vO6mLdAqc0WnLzFg2A+VXIMUGWw79keDT8V78xkYlabxQy
	5oHVSZS6eOE7S4WbWrjDud/F/75FQ/YqXQLIoRyestkexiJiqn95aHESgJBztxPT8f+7ZLvVM7E
	FoTIl8qEyzX91BSvMZExKknquBsAMtF4=
X-Google-Smtp-Source: AGHT+IFIV/Mej/Al7Dd+LnU1vdY6NaHRR2xhdm9KdEGSc/FkHR/SMAfPf6S6iwLe01Pmy5xo9m+xWw==
X-Received: by 2002:a05:6214:cad:b0:709:e65a:8ace with SMTP id 6a1803df08f44-70c35d9be26mr3161416d6.46.1755555185983;
        Mon, 18 Aug 2025 15:13:05 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-70bb4943f5esm37072356d6.50.2025.08.18.15.13.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 15:13:05 -0700 (PDT)
Message-ID: <97ff51e2-8d00-4290-b276-329e274afbac@gmail.com>
Date: Mon, 18 Aug 2025 18:12:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <0EmoKwWUYuRSGxIOrXA4r7H1PtmdM4qyd5U01dyU4@lists.ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <0EmoKwWUYuRSGxIOrXA4r7H1PtmdM4qyd5U01dyU4@lists.ettus.com>
Message-ID-Hash: GBCSZOFR6TV7PISVAK7R3R5AA5BMLWW7
X-Message-ID-Hash: GBCSZOFR6TV7PISVAK7R3R5AA5BMLWW7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N210 has become unreachable through the network.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GBCSZOFR6TV7PISVAK7R3R5AA5BMLWW7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7575157826286069110=="

This is a multi-part message in MIME format.
--===============7575157826286069110==
Content-Type: multipart/alternative;
 boundary="------------rCS3NmeD7q96AlI7hpi5ZwNI"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------rCS3NmeD7q96AlI7hpi5ZwNI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2025-08-18 15:35, shapkiquarry@gmail.com wrote:
>
> The Ettus 210 has become unreachable through pings after changing its 
> IP address. I flashed the EEPROM (as shown below) and then re-powered 
> the radio. The radio should be reachable this way, but has become 
> bricked. When the N210 was on a different VLAN, I could ping it just 
> fine, but is now unreachable with this new IP.
>
> What should I try next to fix this N210?
>
My guess is that you have a network infrastructure issue -- unless this 
device is directly connected to your computer.


>
>     $ ./usrp_burn_mb_eeprom --read-all
>
>     Creating USRP device from address:
>
>     [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>     UHD_4.8.0.HEAD-0-g308126a4
>
>     [INFO] [USRP2] Opening a USRP2/N-Series device...
>
>     [INFO] [USRP2] Current recv frame size: 1472 bytes
>
>     [INFO] [USRP2] Current send frame size: 1472 bytes
>
>     [WARNING] [UDP] The send buffer could not be resized sufficiently.
>
>     Target sock buff size: 2500000 bytes.
>
>     Actual sock buff size: 1048576 bytes.
>
>     See the transport application notes on buffer resizing.
>
>     Please run: sudo sysctl -w net.core.wmem_max=2500000
>
>     [WARNING] [UDP] The send buffer could not be resized sufficiently.
>
>     Target sock buff size: 2500000 bytes.
>
>     Actual sock buff size: 1048576 bytes.
>
>     See the transport application notes on buffer resizing.
>
>     Please run: sudo sysctl -w net.core.wmem_max=2500000
>
>     [WARNING] [UDP] The send buffer could not be resized sufficiently.
>
>     Target sock buff size: 2500000 bytes.
>
>     Actual sock buff size: 1048576 bytes.
>
>     See the transport application notes on buffer resizing.
>
>     Please run: sudo sysctl -w net.core.wmem_max=2500000
>
>     [WARNING] [UHD] Unable to set the thread priority. Performance may
>     be negatively affected.
>
>     Please see the general application notes in the manual for
>     instructions.
>
>     EnvironmentError: OSError: error in pthread_setschedparam
>
>     Fetching current settings from EEPROM...
>
>     EEPROM ["hardware"] is "2577"
>
>     EEPROM ["revision"] is ""
>
>     EEPROM ["product"] is ""
>
>     EEPROM ["mac-addr"] is "00:80:2f:35:33:56"
>
>     EEPROM ["ip-addr"] is "172.16.0.220"
>
>     EEPROM ["subnet"] is "255.255.255.0"
>
>     EEPROM ["gateway"] is "172.16.0.1"
>
>     EEPROM ["gpsdo"] is "none"
>
>     EEPROM ["serial"] is "3255BB7"
>
>     EEPROM ["name"] is ""
>
>     Done
>
>     $ ping -c 9 172.16.0.220
>
>     PING 172.16.0.220 (172.16.0.220) 56(84) bytes of data.
>
>     From 172.16.0.88 icmp_seq=1 Destination Host Unreachable
>
>     From 172.16.0.88 icmp_seq=2 Destination Host Unreachable
>
>     From 172.16.0.88 icmp_seq=3 Destination Host Unreachable
>
>     From 172.16.0.88 icmp_seq=4 Destination Host Unreachable
>
>     From 172.16.0.88 icmp_seq=5 Destination Host Unreachable
>
>     From 172.16.0.88 icmp_seq=6 Destination Host Unreachable
>
>     From 172.16.0.88 icmp_seq=7 Destination Host Unreachable
>
>     From 172.16.0.88 icmp_seq=8 Destination Host Unreachable
>
>     From 172.16.0.88 icmp_seq=9 Destination Host Unreachable
>
>     --- 172.16.0.220 ping statistics ---
>
>     9 packets transmitted, 0 received, +9 errors, 100% packet loss,
>     time 8176ms
>
>     pipe 4
>
>
> Local computer shows,
>
>
>     $ ip addr show enp3s0
>
>     3: enp3s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc
>     fq_codel state UP group default qlen 1000
>
>     link/ether 98:b7:85:1e:d0:cf brd ff:ff:ff:ff:ff:ff
>
>     inet 172.16.0.88/24 brd 172.16.0.255 scope global noprefixroute enp3s0
>
>     valid_lft forever preferred_lft forever
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------rCS3NmeD7q96AlI7hpi5ZwNI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2025-08-18 15:35,
      <a class="moz-txt-link-abbreviated" href="mailto:shapkiquarry@gmail.com">shapkiquarry@gmail.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:0EmoKwWUYuRSGxIOrXA4r7H1PtmdM4qyd5U01dyU4@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>The Ettus 210 has become unreachable through pings after
        changing its IP address. I flashed the EEPROM (as shown below)
        and then re-powered the radio. The radio should be reachable
        this way, but has become bricked. When the N210 was on a
        different VLAN, I could ping it just fine, but is now
        unreachable with this new IP.</p>
      <p>What should I try next to fix this N210? </p>
    </blockquote>
    My guess is that you have a network infrastructure issue -- unless
    this device is directly connected to your computer.<br>
    <br>
    <br>
    <blockquote type="cite"
cite="mid:0EmoKwWUYuRSGxIOrXA4r7H1PtmdM4qyd5U01dyU4@lists.ettus.com">
      <p><br>
      </p>
      <blockquote>
        <p>$ ./usrp_burn_mb_eeprom --read-all</p>
        <p>Creating USRP device from address: </p>
        <p>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
          UHD_4.8.0.HEAD-0-g308126a4</p>
        <p>[INFO] [USRP2] Opening a USRP2/N-Series device...</p>
        <p>[INFO] [USRP2] Current recv frame size: 1472 bytes</p>
        <p>[INFO] [USRP2] Current send frame size: 1472 bytes</p>
        <p>[WARNING] [UDP] The send buffer could not be resized
          sufficiently.</p>
        <p>Target sock buff size: 2500000 bytes.</p>
        <p>Actual sock buff size: 1048576 bytes.</p>
        <p>See the transport application notes on buffer resizing.</p>
        <p>Please run: sudo sysctl -w net.core.wmem_max=2500000</p>
        <p>[WARNING] [UDP] The send buffer could not be resized
          sufficiently.</p>
        <p>Target sock buff size: 2500000 bytes.</p>
        <p>Actual sock buff size: 1048576 bytes.</p>
        <p>See the transport application notes on buffer resizing.</p>
        <p>Please run: sudo sysctl -w net.core.wmem_max=2500000</p>
        <p>[WARNING] [UDP] The send buffer could not be resized
          sufficiently.</p>
        <p>Target sock buff size: 2500000 bytes.</p>
        <p>Actual sock buff size: 1048576 bytes.</p>
        <p>See the transport application notes on buffer resizing.</p>
        <p>Please run: sudo sysctl -w net.core.wmem_max=2500000</p>
        <p>[WARNING] [UHD] Unable to set the thread priority.
          Performance may be negatively affected.</p>
        <p>Please see the general application notes in the manual for
          instructions.</p>
        <p>EnvironmentError: OSError: error in pthread_setschedparam</p>
        <p>Fetching current settings from EEPROM...</p>
        <p> EEPROM ["hardware"] is "2577"</p>
        <p> EEPROM ["revision"] is ""</p>
        <p> EEPROM ["product"] is ""</p>
        <p> EEPROM ["mac-addr"] is "00:80:2f:35:33:56"</p>
        <p> EEPROM ["ip-addr"] is "172.16.0.220"</p>
        <p> EEPROM ["subnet"] is "255.255.255.0"</p>
        <p> EEPROM ["gateway"] is "172.16.0.1"</p>
        <p> EEPROM ["gpsdo"] is "none"</p>
        <p> EEPROM ["serial"] is "3255BB7"</p>
        <p> EEPROM ["name"] is ""</p>
        <p>Done</p>
        <p>$ ping -c 9 172.16.0.220</p>
        <p>PING 172.16.0.220 (172.16.0.220) 56(84) bytes of data.</p>
        <p>From 172.16.0.88 icmp_seq=1 Destination Host Unreachable</p>
        <p>From 172.16.0.88 icmp_seq=2 Destination Host Unreachable</p>
        <p>From 172.16.0.88 icmp_seq=3 Destination Host Unreachable</p>
        <p>From 172.16.0.88 icmp_seq=4 Destination Host Unreachable</p>
        <p>From 172.16.0.88 icmp_seq=5 Destination Host Unreachable</p>
        <p>From 172.16.0.88 icmp_seq=6 Destination Host Unreachable</p>
        <p>From 172.16.0.88 icmp_seq=7 Destination Host Unreachable</p>
        <p>From 172.16.0.88 icmp_seq=8 Destination Host Unreachable</p>
        <p>From 172.16.0.88 icmp_seq=9 Destination Host Unreachable</p>
        <p>--- 172.16.0.220 ping statistics ---</p>
        <p>9 packets transmitted, 0 received, +9 errors, 100% packet
          loss, time 8176ms</p>
        <p>pipe 4</p>
      </blockquote>
      <p><br>
      </p>
      <p>Local computer shows,</p>
      <p><br>
      </p>
      <blockquote>
        <p>$ ip addr show enp3s0</p>
        <p>3: enp3s0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500
          qdisc fq_codel state UP group default qlen 1000</p>
        <p> link/ether 98:b7:85:1e:d0:cf brd ff:ff:ff:ff:ff:ff</p>
        <p> inet 172.16.0.88/24 brd 172.16.0.255 scope global
          noprefixroute enp3s0</p>
        <p> valid_lft forever preferred_lft forever</p>
      </blockquote>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre wrap="" class="moz-quote-pre">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------rCS3NmeD7q96AlI7hpi5ZwNI--

--===============7575157826286069110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7575157826286069110==--
