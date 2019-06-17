Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E0249379
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2019 23:31:26 +0200 (CEST)
Received: from [::1] (port=39294 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hczDn-0005s2-P3; Mon, 17 Jun 2019 17:31:23 -0400
Received: from mail-qt1-f196.google.com ([209.85.160.196]:37452)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hczDj-0005kR-Oh
 for usrp-users@lists.ettus.com; Mon, 17 Jun 2019 17:31:19 -0400
Received: by mail-qt1-f196.google.com with SMTP id y57so12731484qtk.4
 for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2019 14:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=kHnPHeN9jvFc7aRx771TzHDLEM2hFPdzOlZ9IU+SYII=;
 b=pQbKn3tHz29d5im/QBWqY/uD7UQjB4Oc/vSbaXfCnkddkULp0cPmalK3j4z34KhHOs
 asb3pxaVuX1zDnjl9OoR0HSy2pU98XxpKo2uVN7c6bUPrxPkLAgCAM+H6zFXwn0nA99x
 Ws8TarTHXYBtBJFBlorNDMXgGGxVOE+qapeiiup8HFUiITpiaVVWfPFLa2YxAZydrjEn
 BiRM8vpaWd6BAcGwiY5XFG+qej3KIlA7TPowm7SBOgFuKrEZa4vc0NI6BfogEuHpOY56
 Mwhlo2M2SmfDf0fAf8AxOhgrlLFTSi+AXrtxaF9ohzwhTVnZVqOQr2O7/Wbimy0K6Bsh
 qgdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=kHnPHeN9jvFc7aRx771TzHDLEM2hFPdzOlZ9IU+SYII=;
 b=sokjWz+G1EV9x0bESyHotJhromCF9ZTDy6TDjRMcvCsu55X1q5EO2CxpjTdWkShrTH
 sxMo9mU/RIKRLkffnEqNBGzIlC8TIiaMxU3jngnZ0EuuSqiJDFwcorZ1r4JnKIg8ZeQ2
 6k5yc8JJm+MfMGdcnKOY63G/U9gRR3y5zkpp7S1CKmunhyuNd0q5lIxr8m/2mKZQ1vnK
 v9jeR4niuBMWaqz5Q77YJVqAh1Cuy2LWUz1Tp4DX8ZmABBcY59FLusscJshLcXhEFsLw
 D9SH6rdnKqGlQCCKp0fpOnokmPUDT0xJsIHb257RPYC8VrEYqiSHQKgW1EAI30vXs9Go
 +Jyg==
X-Gm-Message-State: APjAAAWf+jqAnKMb2J5+UePoVKkdnIpQ+yzQVVsP3a8uAvqESPzIHVeG
 CvZ6pipIZtokRni7o5g/m/v9+uLP
X-Google-Smtp-Source: APXvYqyjqxoiynorOkukojVVvYHba3t2z6/WLFVEZughAX/es4oJ9UD7HNpq86TVn3RP6n+iJ2xwQQ==
X-Received: by 2002:a0c:d1e2:: with SMTP id k31mr23976357qvh.173.1560807039204; 
 Mon, 17 Jun 2019 14:30:39 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id a11sm6918811qkn.26.2019.06.17.14.30.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 14:30:38 -0700 (PDT)
Message-ID: <5D08067E.90306@gmail.com>
Date: Mon, 17 Jun 2019 17:30:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Donnie C <dbc23910@gmail.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
 <5D07FF68.9080804@gmail.com>
 <CAO_1D1W9h1hg_182mQ5oDZbaVqHNgFnu9gjPnMZ08ZLd0eSNgA@mail.gmail.com>
 <5D080359.8070609@gmail.com>
 <CAO_1D1Web8+vG02Sqra-eBxnHTZiMEFnwc2rDzSjuL=-VryCLQ@mail.gmail.com>
In-Reply-To: <CAO_1D1Web8+vG02Sqra-eBxnHTZiMEFnwc2rDzSjuL=-VryCLQ@mail.gmail.com>
Subject: Re: [USRP-users] E310 Startup/Boot not working
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Content-Type: multipart/mixed; boundary="===============6098198247833753252=="
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
--===============6098198247833753252==
Content-Type: multipart/alternative;
 boundary="------------040102070706010407080003"

This is a multi-part message in MIME format.
--------------040102070706010407080003
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/17/2019 05:27 PM, Donnie C wrote:
> Its definitely being written to the right place /dev folder doesnt 
> have anything large under it, but how would you check if the image was 
> downloaded in text mode?
Some windows FTP clients default to text mode, even when downloading 
binary data.  But that would only apply if you used FTP.

You sure your download didn't fail in the middle?  Compare the sizes.


>
> On Mon, Jun 17, 2019 at 3:17 PM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 06/17/2019 05:09 PM, Donnie C wrote:
>     > Im pretty sure the speed grade matches so it must be an
>     incorrect sd
>     > card burn, but as far as I can tell I followed the ettus
>     tutorial for
>     > sd image burning, is there any extra steps involved they don't
>     go over?
>     Bad card?  Bad card burner?  Pulled the card before the I/O had been
>     fully flushed out to it?  Downloaded the image in text mode?  Got the
>        device name wrong when burning, and now you have a large file
>     under
>     /dev, instead of written out to the actual card?
>
>


--------------040102070706010407080003
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/17/2019 05:27 PM, Donnie C wrote:<br>
    </div>
    <blockquote
cite="mid:CAO_1D1Web8+vG02Sqra-eBxnHTZiMEFnwc2rDzSjuL=-VryCLQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Its definitely being written to the right place /dev folder
          doesnt have anything large under it, but how would you check
          if the image was downloaded in text mode?</div>
      </div>
    </blockquote>
    Some windows FTP clients default to text mode, even when downloading
    binary data.  But that would only apply if you used FTP.<br>
    <br>
    You sure your download didn't fail in the middle?  Compare the
    sizes.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAO_1D1Web8+vG02Sqra-eBxnHTZiMEFnwc2rDzSjuL=-VryCLQ@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Mon, Jun 17, 2019 at 3:17
            PM Marcus D. Leech &lt;<a moz-do-not-send="true"
              href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">On 06/17/2019 05:09 PM,
            Donnie C wrote:<br>
            &gt; Im pretty sure the speed grade matches so it must be an
            incorrect sd <br>
            &gt; card burn, but as far as I can tell I followed the
            ettus tutorial for <br>
            &gt; sd image burning, is there any extra steps involved
            they don't go over?<br>
            Bad card?  Bad card burner?  Pulled the card before the I/O
            had been <br>
            fully flushed out to it?  Downloaded the image in text
            mode?  Got the<br>
               device name wrong when burning, and now you have a large
            file under <br>
            /dev, instead of written out to the actual card?<br>
            <br>
            <br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------040102070706010407080003--


--===============6098198247833753252==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6098198247833753252==--

