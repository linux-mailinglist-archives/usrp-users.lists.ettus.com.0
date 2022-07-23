Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA61457EB07
	for <lists+usrp-users@lfdr.de>; Sat, 23 Jul 2022 03:23:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8FFE381075
	for <lists+usrp-users@lfdr.de>; Fri, 22 Jul 2022 21:23:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658539406; bh=kTPkc0BMytqi5i6mGRGW2Jdhe9GiOVvG2Xs14YZJYRg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tSJ6adJQKnBAVKCV/KuhHQs5uihW5ri/uaoOWgMYkre6QVTWgGw8Uq/0FcA6T9F6Z
	 eQUI6+I+rr/l4qwP+yNDSFjk/h4PFfz8oXasPl+wBUbCS0477QBr++tdSZtdjGH6Tb
	 jdBFN7O9VG4Hk/N5CXiZp3rM4fInPVxpcmxseYxN24vCA7VXwZUG8tqP0jM74Ty8k3
	 zxYDBdNOWldTINuKnSe64QJOTNS6M/RMpYcpOwZn8jqo7x0l4TzJ74HlsMnMtdpRLd
	 f1gWCt/we2GUmURvv8sHNWLyWS7+Ts5z4oCRQHylSlD+Qa2o/l3hVw5Vhh8y1BbGWt
	 ECN/u+d7AYwzQ==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 3988E381075
	for <usrp-users@lists.ettus.com>; Fri, 22 Jul 2022 21:22:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eo4x8Fbm";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id x11so4665733qts.13
        for <usrp-users@lists.ettus.com>; Fri, 22 Jul 2022 18:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=RfxZmHBb88SrAxDRjNoYXJxKK+Vgh/HE6twv88z4LXA=;
        b=eo4x8FbmyjkYPC8KIFKJpdSazn6APdEizOPwCi4Y62ecdADeLDnqEQhphBkunylLA+
         JkfyNvs8FRV6PGZ2paQYZ65B6RB0fueG0474yQmD+sX/ttkM3RY8hGpTqpMsJMqzRWyL
         vyX79OPnJ8iOLsQAgB+B6grBaQ6L+7dYmi4d/1raUcMNXC2sfOnL5Eq4w4cCEZaeKswN
         FCaf/muJnnBKYBnTekXs3irJBnW9p83+GmZRUdEgZtYG7LsXeJaO3qxAwJA/DCFFPzks
         8h1F2eYOj7WQbsjurIccbooQI+/UAGH2cf3XWgOjrRfVfpH/zZtOoYTxVZ1+USpllR6Y
         K5Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=RfxZmHBb88SrAxDRjNoYXJxKK+Vgh/HE6twv88z4LXA=;
        b=NvVPPefrrgovW/8gKyZgBV7Ga8B81ywnSv5ylJ8RWRTK6nLO8MaLa8rh4YULqiGCXP
         jf3UAr1HxHf2o/bPzP9NjrwzYYcS746y+UjcKTsCO/8yBgg9fT8qjinXkfVNvfWL8Sah
         y8j3Y5Oet2w8RcT4dpNlPvbpPovULN6IV4AZ+PkSVe1srP1f5J7hVgDhlQaACkY0GJjY
         mXvg1HtjmlawTgCeNAMqr/nbe0hMUcFlCS72O+PDWRvUt3q7xg4KsPTrVNlQRUbA6tUh
         zjpIjVyLP8far32cFe8kKfRDxA05DPmRWuItJ4W1xQumfRPNnswvINE020RqBALRoqgR
         9vpw==
X-Gm-Message-State: AJIora9wqcxNik6b2aBzH15ttTmm956Kzcd7QyOkj6Q3dhm0vEPZSd2i
	2MmjkKNcqR6Wn34IUVq3be2qnkC6350=
X-Google-Smtp-Source: AGRyM1tCE2OwuYS4YO1O8IdDW4gVG7dMKGJm5ikr209bEo3K4I4gLUj4s/fBUreiTjdodaiFjp7kDw==
X-Received: by 2002:ac8:5f13:0:b0:31f:1b01:a184 with SMTP id x19-20020ac85f13000000b0031f1b01a184mr2475623qta.342.1658539339476;
        Fri, 22 Jul 2022 18:22:19 -0700 (PDT)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id do23-20020a05620a2b1700b006a758ce2ae1sm4806695qkb.104.2022.07.22.18.22.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 18:22:18 -0700 (PDT)
Message-ID: <ee6a7ef7-3d28-f6c4-3203-1f38c289a2f3@gmail.com>
Date: Fri, 22 Jul 2022 21:22:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <182274231d9.1031c912c2324005.5412430506593081403@uberasch.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <182274231d9.1031c912c2324005.5412430506593081403@uberasch.com>
Message-ID-Hash: CAHETVLVFJOXPBQPP5VI2YMCY46AF7A7
X-Message-ID-Hash: CAHETVLVFJOXPBQPP5VI2YMCY46AF7A7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Stream command not executing on PPS edge
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CAHETVLVFJOXPBQPP5VI2YMCY46AF7A7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0109113509370265366=="

This is a multi-part message in MIME format.
--===============0109113509370265366==
Content-Type: multipart/alternative;
 boundary="------------0zAuGnYxJyEOjL45DHQ84rE6"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0zAuGnYxJyEOjL45DHQ84rE6
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-07-22 14:53, Jack Gallegos wrote:
> I am trying to receive samples from a transmitter that sends a data 
> burst every second starting on rising edge of GPS PPS with my X310. My 
> program structure works like this:
>
> initialize USRP -> create stream command as MODE_NUM_SAMPS_AND_DONE 
> and stream_now=false -> set time on USRP at next pps to 0.0 seconds -> 
> wait 2 seconds in thread for supposed issue on PPS taking time to 
> update -> set stream command time_spec to be time of last PPS + 1.0 
> seconds (so in theory, on another PPS edge) -> issue stream command -> 
> receive samples
>
> The ref and pps sources are from external gpsdo and I can tell they 
> are selected because the PPS LED is blinking and the REF LED is solid 
> and external sensors are checked for lock during initialization.
>
> However, when I run this program, I am finding that the USRP is not 
> sampling at the start of the PPS, but at seemingly random times. For 
> example, looking at the received samples, the transmitted pulse that I 
> know for certain is starting with the PPS is being received at 0.1, 
> 0.2, 0.3 seconds, etc.
>
> How can I be sure that the USRP knows to sample directly on the PPS edge?
>
>
> -Jack Gallegos
>
>
Which version of UHD? Can you share the actual code you're using to 
set-up streaming, and setting of the clocks?


--------------0zAuGnYxJyEOjL45DHQ84rE6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-22 14:53, Jack Gallegos
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:182274231d9.1031c912c2324005.5412430506593081403@uberas=
ch.com">
      <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-=
Type">
      <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;
        font-size: 10pt;">
        <div>I am trying to receive samples from a transmitter that
          sends a data burst every second starting on rising edge of GPS
          PPS with my X310. My program structure works like this:<br>
        </div>
        <div><br>
        </div>
        <div>initialize USRP -&gt; create stream command as
          MODE_NUM_SAMPS_AND_DONE and stream_now=3Dfalse -&gt; set time o=
n
          USRP at next pps to 0.0 seconds -&gt; wait 2 seconds in thread
          for supposed issue on PPS taking time to update -&gt; set
          stream command time_spec to be time of last PPS + 1.0 seconds
          (so in theory, on another PPS edge) -&gt; issue stream command
          -&gt; receive samples<br>
        </div>
        <div><br>
        </div>
        <div>The ref and pps sources are from external gpsdo and I can
          tell they are selected because the PPS LED is blinking and the
          REF LED is solid and external sensors are checked for lock
          during initialization.<br>
        </div>
        <div><br>
        </div>
        <div>However, when I run this program, I am finding that the
          USRP is not sampling at the start of the PPS, but at seemingly
          random times. For example, looking at the received samples,
          the transmitted pulse that I know for certain is starting with
          the PPS is being received at 0.1, 0.2, 0.3 seconds, etc.<br>
        </div>
        <div><br>
        </div>
        <div>How can I be sure that the USRP knows to sample directly on
          the PPS edge?<br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div class=3D"zmail_signature_below">
          <div id=3D"" data-zbluepencil-ignore=3D"true"
            data-sigid=3D"4269381000000033001">
            <div>-Jack Gallegos=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>
            </div>
            <div><br>
            </div>
          </div>
        </div>
        <br>
      </div>
    </blockquote>
    Which version of UHD? Can you share the actual code you're using to
    set-up streaming, and setting of the clocks?<br>
    <br>
    <br>
  </body>
</html>

--------------0zAuGnYxJyEOjL45DHQ84rE6--

--===============0109113509370265366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0109113509370265366==--
