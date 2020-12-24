Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 421FA2E286B
	for <lists+usrp-users@lfdr.de>; Thu, 24 Dec 2020 18:33:17 +0100 (CET)
Received: from [::1] (port=48096 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ksUUD-0002iz-1r; Thu, 24 Dec 2020 12:33:13 -0500
Received: from mail-qv1-f41.google.com ([209.85.219.41]:36595)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1ksUU9-0002eq-An
 for usrp-users@lists.ettus.com; Thu, 24 Dec 2020 12:33:09 -0500
Received: by mail-qv1-f41.google.com with SMTP id j18so1440422qvu.3
 for <usrp-users@lists.ettus.com>; Thu, 24 Dec 2020 09:32:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=8e1852IMBg6RF9KkQ+rQGxf42L6BLJxflqobyPyzV3o=;
 b=ONBlAhPphPjH8cnw8Fbi9XsBzJGGz7dEwSTfw376+PIArLEMBqcJ6c5xUdqcwve+Uu
 71Oo73mkZcBoOdolIXb3YVSCR9zlYqIkgXcPNmnS4LdhcUoLky+23uncaqbr26CmRNGV
 Gh79cZwAU5ntacP6Svuwh7iKCdTl4v44RdQYYQW2qx4CosBfW5OEiR7BgHVQYAvlnBUI
 XoOzXxXmm/yVw+Alp7bVWe4Ah/hosXaE8HwZSn4rzXFlHG2LTNtPNvJ5XbRC+obQnng5
 JSGQD7rszQub6dASoVd1KW+Rf06J3WRufQD2642TswXAHG5K445Yof7VGjhkBmg5sx5G
 +1dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=8e1852IMBg6RF9KkQ+rQGxf42L6BLJxflqobyPyzV3o=;
 b=L7tRCZ6eycz5hcy3TEyU7VfVh9y6uZ2IXowHHhCy4iQS2RqtpR0z2iSFWN8V6nAIJB
 C3950hOQ46tcE/eJfK5rKj3C4UdBY0if/h/XB2ENewhQznxtuZKBEXVPDBK3vbvNNrtV
 K4A6mlcJVQsRVfDSwjRQNAcaARKbUHZpdoj3LQ94E54tQtgtVEPaoEzDAr0PbKRJdKvg
 aXhzSZyAUk3nakHpOi54vWCGqdbj33G09iZDp1V9Dz7h07Wa1BXxAmY6qpZV6nEenV2K
 JJdecZTbPGCsvODScBDX+95j+HlBmgvu/rD+iWBvc+9zargwlkNGPic2E3l7huIN4WbC
 zg+A==
X-Gm-Message-State: AOAM530kxgAZAt0/GeLGUFy3yfO7PLmmTgmbDsURzSeLDe+DjJ6o/fg5
 QhxJ1GSUgkfQ72BLnDIkl8U4wO2E5Ts=
X-Google-Smtp-Source: ABdhPJwpu0VQ1sSNtlygN+5hKzg1ZM7AtmwpBfKSihqHZszQRLCSCQWcCIeH+qmOIkzH95YHIEiFxw==
X-Received: by 2002:a05:6214:80d:: with SMTP id
 df13mr32886733qvb.10.1608831148606; 
 Thu, 24 Dec 2020 09:32:28 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id
 n188sm17449612qke.17.2020.12.24.09.32.28
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Dec 2020 09:32:28 -0800 (PST)
Message-ID: <5FE4D0AB.2040600@gmail.com>
Date: Thu, 24 Dec 2020 12:32:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAMiam1K1C7OJHMAnzxo=5tyCe0SxiKbTtUiy4exGYK0xx6jaig@mail.gmail.com>
In-Reply-To: <CAMiam1K1C7OJHMAnzxo=5tyCe0SxiKbTtUiy4exGYK0xx6jaig@mail.gmail.com>
Subject: Re: [USRP-users] Where is GNU Radio Live SDR Environment ISO?
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============0576502087713363729=="
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

This is a multi-part message in MIME format.
--===============0576502087713363729==
Content-Type: multipart/alternative;
 boundary="------------000600010109010009060507"

This is a multi-part message in MIME format.
--------------000600010109010009060507
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 12/24/2020 03:52 AM, Mattei Rinaldo via USRP-users wrote:
> Hi to All,
>
> please someone kind enough to give me the link to download the GNU 
> Radio Live SDR Environment ISO. I have a N210 with GPS and I can't get 
> it to work.
> The ping is there but always "UHD device not found". Maybe with this 
> ISO I would succeed.
>
> I take advantage of this email to make many wishes for happy holidays 
> to everyone. Best wishes for all good!
>
> Giuseppe
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
Please share the complete output of:

uhd_usrp_probe --args type=n200


With us, and we can help diagnose.



--------------000600010109010009060507
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/24/2020 03:52 AM, Mattei Rinaldo
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAMiam1K1C7OJHMAnzxo=5tyCe0SxiKbTtUiy4exGYK0xx6jaig@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><span class="gmail-VIiyi" lang="en"><span
              class="gmail-JLqJ4b gmail-ChMk0b"><span>Hi to All,</span></span><span
              class="gmail-JLqJ4b"><span>
              </span></span><span class="gmail-JLqJ4b gmail-ChMk0b"><span><br>
              </span></span></span></div>
        <div><span class="gmail-VIiyi" lang="en"><span
              class="gmail-JLqJ4b gmail-ChMk0b"><span><br>
              </span></span></span></div>
        <div><span class="gmail-VIiyi" lang="en"><span
              class="gmail-JLqJ4b gmail-ChMk0b"><span>please someone
                kind enough to give me the link to download the GNU
                Radio Live SDR Environment ISO.</span></span> <span
              class="gmail-JLqJ4b gmail-ChMk0b"><span>I have a N210 with
                GPS and I can't get it to work.</span></span> <span
              class="gmail-JLqJ4b gmail-ChMk0b"><span><br>
              </span></span></span></div>
        <div><span class="gmail-VIiyi" lang="en"><span
              class="gmail-JLqJ4b gmail-ChMk0b"><span>The ping is there
                but always "UHD device not found".</span></span> <span
              class="gmail-JLqJ4b gmail-ChMk0b"><span>Maybe with this
                ISO I would succeed.</span></span><span
              class="gmail-JLqJ4b"><span><br>
              </span></span></span></div>
        <div><span class="gmail-VIiyi" lang="en"><span
              class="gmail-JLqJ4b"><span><br>
              </span></span></span></div>
        <div><span class="gmail-VIiyi" lang="en"><span
              class="gmail-JLqJ4b"><span>
              </span></span><span class="gmail-JLqJ4b gmail-ChMk0b"><span>I
                take advantage of this email to make many wishes for
                happy holidays to everyone.</span></span> <span
              class="gmail-JLqJ4b gmail-ChMk0b"><span>Best wishes for
                all good!</span></span><span class="gmail-JLqJ4b"><span>
              </span></span><br>
          </span></div>
        <div><br>
        </div>
        <div>Giuseppe<br>
        </div>
        <div><span class="gmail-VIiyi" lang="en"></span></div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    Please share the complete output of:<br>
    <br>
    uhd_usrp_probe --args type=n200<br>
    <br>
    <br>
    With us, and we can help diagnose.<br>
    <br>
    <br>
  </body>
</html>

--------------000600010109010009060507--


--===============0576502087713363729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0576502087713363729==--

