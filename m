Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 047C736E463
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 07:04:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04D01383F6F
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 01:04:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gH2wQ4Xc";
	dkim-atps=neutral
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 666B0383F64
	for <usrp-users@lists.ettus.com>; Thu, 29 Apr 2021 01:03:23 -0400 (EDT)
Received: by mail-ej1-f42.google.com with SMTP id r12so97938152ejr.5
        for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 22:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=MqnksMcO+/YqHHIUWOysEhDzr+v7GXGQgoHryD9N/10=;
        b=gH2wQ4Xcu9TgSswMFeJRqC2x7qaHyeQWbODBqWtZKfdYLOhYE6zzMTf6evko4iX4wA
         qkewIHW3PUT8vTGg4oZ3sE907sWpN7R3zQ6BY/jb3vAZW1uwzR32gJFQwRlDWn4WVAaN
         /Ssappc7vEgR6YRtzKcHUkLGBzYHKOo4WSXWH2r4Z/2r/3L+KOifR7uls5cfMWhU3z0y
         lT/zPNDDJ10WW+Tnr/GJeIxsOmATlPZNBohwRKK966WqzK5g/+HeLORSuZjrpm//y8Vn
         Ryl2VE91ip+AgM2d7gtAvWuiyzMn2xwzgtpUHzYi1t1U2yrzp78phF6XSQCg9EXXCo+M
         OVIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=MqnksMcO+/YqHHIUWOysEhDzr+v7GXGQgoHryD9N/10=;
        b=pVTIk9mNEG8WYusSuuYuTV/Oyxf0gB+QoQxvsmNkr62E8xs+Y91HRfp7i2wRQY5PS4
         qGd8M21j73pw/MocjA5nS0Z1ILgyMbwSV2n9yA4mKupg+DCzutErVx1Kat64KFkYzlqD
         JETlPlPm9/HS+wMMaQ8U1rTUAWasItG0F9o4F2iqO9/GeBX0FifJBEeY8XF492pvjJZD
         eBroBXOOEy1RquFel9fGm8H618wqSnTlSey2suSNbtrgn3fM3gODiCX8ARsfnV6b1GgR
         jdCQgPdFiJa8uVk0UNQ6yJ7bR8PaEfNXDqs4FDRbWTW3EIoHL+p9LsO4vb+twmr6jHue
         piJw==
X-Gm-Message-State: AOAM530bBbjbpDVxGeCUiogfiD1NH9qpsmAn4mKjzMkfNIzxmq6nBgYc
	cyNkAdHejuZIkFuMOBznM71iqY8IZ2M=
X-Google-Smtp-Source: ABdhPJwNlpsITTdGeLapVssTvT/NY6MLqBEMbZ62kPo1PFEs135p3WqlJcSOteKwsqCH25uDhO/H+g==
X-Received: by 2002:a17:906:430f:: with SMTP id j15mr32871315ejm.543.1619672602110;
        Wed, 28 Apr 2021 22:03:22 -0700 (PDT)
Received: from [10.0.0.3] ([176.65.80.99])
        by smtp.gmail.com with ESMTPSA id y2sm1085621ejg.123.2021.04.28.22.03.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 22:03:21 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CACjmV_kMF7VY5eDhM5yH2=d9xmyMdH+uS8XP4UM+xeoaNkPhYA@mail.gmail.com>
From: Nando Pellegrini <i1ndp.nando@gmail.com>
Message-ID: <264ade49-8560-af18-2347-2ad00d770ba8@gmail.com>
Date: Thu, 29 Apr 2021 07:03:21 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CACjmV_kMF7VY5eDhM5yH2=d9xmyMdH+uS8XP4UM+xeoaNkPhYA@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: WPYWWASI3ISFM2KYTQH6O2LZ7DX7OSXJ
X-Message-ID-Hash: WPYWWASI3ISFM2KYTQH6O2LZ7DX7OSXJ
X-MailFrom: i1ndp.nando@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: The operating system cannot be started when B200 is plugged into the computer
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WPYWWASI3ISFM2KYTQH6O2LZ7DX7OSXJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3873939760300977554=="

This is a multi-part message in MIME format.
--===============3873939760300977554==
Content-Type: multipart/alternative;
 boundary="------------FEC47C1E1A5F71DC40BC8962"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FEC47C1E1A5F71DC40BC8962
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

To reset the B200 all most at every start, a very annoying inconvenient.
Nando

On 4/29/2021 06:11, Damon qiu wrote:
> Hi all,
>
> In one of our applications, we need to integrate USRP B200 and 
> computer into a mechanical mechanism. So B200 is always connected to 
> the USB port of the computer.
> In this case, the computer may not start, or it may take a long time 
> to enter the operating system.
>
> Is there a solution? thank you.
>
> Best regards,
> Damon
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------FEC47C1E1A5F71DC40BC8962
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    To reset the B200 all most at every start, a very annoying
    inconvenient.<br>
    Nando<br>
    <br>
    <div class="moz-cite-prefix">On 4/29/2021 06:11, Damon qiu wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CACjmV_kMF7VY5eDhM5yH2=d9xmyMdH+uS8XP4UM+xeoaNkPhYA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Hi all,
        <div><br>
        </div>
        <div>In one of our applications, we need to integrate USRP B200
          and computer into a mechanical mechanism. So B200 is always
          connected to the USB port of the computer.</div>
        <div>In this case, the computer may not start, or it may take a
          long time to enter the operating system.</div>
        <div><br>
        </div>
        <div>Is there a solution? thank you.</div>
        <div><br>
        </div>
        <div>Best regards,</div>
        <div>Damon</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------FEC47C1E1A5F71DC40BC8962--

--===============3873939760300977554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3873939760300977554==--
