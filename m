Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A71BBFF9
	for <lists+usrp-users@lfdr.de>; Tue, 24 Sep 2019 04:23:20 +0200 (CEST)
Received: from [::1] (port=57494 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iCaU1-000330-EW; Mon, 23 Sep 2019 22:23:17 -0400
Received: from mail-qk1-f169.google.com ([209.85.222.169]:36488)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iCaTx-0002p9-Dd
 for usrp-users@lists.ettus.com; Mon, 23 Sep 2019 22:23:13 -0400
Received: by mail-qk1-f169.google.com with SMTP id y189so175955qkc.3
 for <usrp-users@lists.ettus.com>; Mon, 23 Sep 2019 19:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=c8Ipl71QAY1FC505Rtbhu1WCg4KoSmUV4guOFmakXY0=;
 b=UQA02WhJAmQk4bD3QJQz7a6wKEcwWlU2noxffI/nuxuQyeg8tn+eHdhqgfaRJlRtId
 P8mM77RIxP6/hP181gV3OF8aqibVj2SDHthHNhP385W6cl1CMYwSEyDmOVlGGMKKZPtn
 JPhIMzXMz98m28ZUwDY8VroGUtd/+opY0V5fFDZO4fOhkXFir+MXkLRxpzbZFXpqLm3c
 YY84mvIKKDbBjZbUCtB4AaEQvWTBx7Bjp5ozKaJ4nb9aiZL9wKcdBtnjXqxTvVqk7bbg
 tKCQ6bhf5I3aWQGXI3t7DqcERic9esPnQY8rdGtdnLMGxX6Nt/ghyMLp/n/BSORvMxMw
 1n6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=c8Ipl71QAY1FC505Rtbhu1WCg4KoSmUV4guOFmakXY0=;
 b=sneUMy+Y9iizOj3wa67OT/RuZm2KH98OX2nBHU8pubBiFmiJSWTGa6IINB8F7QJe6E
 wyExOr98IcFAtwuKfiGbIrk5PRZZ+PL8jIfkys0dNYlE0utxl0j6QFwOqiUvB58plJVI
 rZLJ+oIo+YiA5ZnQMI6D4aLOWoaXm7mfkr9/0OWALMXfYHdOnry26+EdgIR4tS9VbbbH
 tSEjE03s35qLrgubGDubM8WPjnGwPvdohAMT76sr3IrJzwePuI7/arJplNtyBBdFMxwo
 rlfigd9zhOGRxnCGcaU1TLhcYBdrQQmHF3wNAoRva2kUZMnBjV6gmO/oabYVle0PoQia
 ifwg==
X-Gm-Message-State: APjAAAUMV9HaQVELWWzfUY9s3MLFhFB8X9ZiBoy06qXRg1D2zoGFf4zV
 sUgaT09dyUnCmL3xFCKB4uqf/i97
X-Google-Smtp-Source: APXvYqzVjOfM8gpmc5V/IURblI1EX5UuaXFoVF2xpOqeTL6nfFKfR0FE0IFsrKVTw2MsFV/jbo0hcQ==
X-Received: by 2002:a05:620a:16d2:: with SMTP id
 a18mr250458qkn.104.1569291752627; 
 Mon, 23 Sep 2019 19:22:32 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id j7sm162716qtc.73.2019.09.23.19.22.31
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Sep 2019 19:22:31 -0700 (PDT)
Message-ID: <5D897DE7.4080808@gmail.com>
Date: Mon, 23 Sep 2019 22:22:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAMKs6heJ9P9ThPC=EAdSdb-8jHDkC6yi4+h-By-Fq3CeNnZBFw@mail.gmail.com>
In-Reply-To: <CAMKs6heJ9P9ThPC=EAdSdb-8jHDkC6yi4+h-By-Fq3CeNnZBFw@mail.gmail.com>
Subject: Re: [USRP-users] USRP N310 Phase Bouncing Issue
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
Content-Type: multipart/mixed; boundary="===============7747913946676907515=="
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
--===============7747913946676907515==
Content-Type: multipart/alternative;
 boundary="------------050008040503010602000908"

This is a multi-part message in MIME format.
--------------050008040503010602000908
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/23/2019 10:12 PM, Austin Adam via USRP-users wrote:
> Hi USRP Users,
>
> Currently we are taking a signal from a signal generator, splitting it 
> four ways, and connecting it to the receiving ports of the USRP N310.  
> We are using a USRP N210 as an external local oscillator (splitting 
> the output into the RX LO ports on the N310) to help synchronize the 
> four signals.
>
> During first observation, using GNU Radio, we noticed that the four 
> signals display about a 180 degree phase shift between the daughter 
> boards, as stated online within the getting started manual of the 
> N310.  We expected to see this 180 degrees phase shift however, we are 
> unexpectedly noticing a bouncing of phase shift during our 
> simulations. This can be seen in the video attached.
>
> We thought the cause of this was because of insufficient power being 
> input into the external LO (+3dBm-6dBm) however increasing the power 
> to satisfy this, did not solve the problem.
>
> Are we correct to assume that there should be an initial 180 degree 
> phase discrepancy that can be fixed using GNU? Or is this bouncing in 
> phase a normal occurrence when using an N210 to drive the external LO?
>
> The PPS an MIMO cables are not currently connected.
>
>  Thank you for any responses!
>
> ~Austin
> Gain30.75.webm 
> <https://drive.google.com/file/d/1pVEcmdE--pvkEy_6eWWNzWQHlYk1CyUI/view?usp=drive_web>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
Are you operating very close to DC in the baseband?  (That is, the LO is 
very close to the received signal).  You could just be seeing the
   dynamic nature of DC offset removal.

The movie won't play for me (probably my fault), so I'm just guessing 
here.  You'll likely see some aggregate phase noise that is the sum
   of the phase-noise of the LO splitting electronics, and the 
phase-noise of the RF channels and mixing, etc.

What is the magnitude of the phase noise (after you've accounted for the 
180deg phase ambiguity due to the 2XLO scheme).



--------------050008040503010602000908
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/23/2019 10:12 PM, Austin Adam via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAMKs6heJ9P9ThPC=EAdSdb-8jHDkC6yi4+h-By-Fq3CeNnZBFw@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi USRP Users,
        <div><br>
        </div>
        <div>Currently we are taking a signal from a signal generator,
          splitting it four ways, and connecting it to the
          receiving ports of the USRP N310.  We are using a USRP N210 as
          an external local oscillator (splitting the output into the RX
          LO ports on the N310) to help synchronize the four signals.   
          <div><br>
          </div>
          <div>During first observation, using GNU Radio, we noticed
            that the four signals display about a 180 degree phase shift
            between the daughter boards, as stated online within the
            getting started manual of the N310.  We expected to see this
            180 degrees phase shift however, we are unexpectedly
            noticing a bouncing of phase shift during our simulations.
            This can be seen in the video attached.</div>
          <div><br>
          </div>
          <div>We thought the cause of this was because of insufficient
            power being input into the external LO (+3dBm-6dBm) however
            increasing the power to satisfy this, did not solve
            the problem. </div>
          <div><br>
          </div>
          <div>Are we correct to assume that there should be an initial
            180 degree phase discrepancy that can be fixed using GNU? Or
            is this bouncing in phase a normal occurrence when using an
            N210 to drive the external LO?</div>
          <div><br>
          </div>
          <div>The PPS an MIMO cables are not currently connected.</div>
          <div><br>
          </div>
          <div> Thank you for any responses!</div>
          <div><br>
          </div>
          <div>~Austin</div>
          <div class="gmail_chip gmail_drive_chip"
            style="width:396px;height:18px;max-height:18px;background-color:rgb(245,245,245);padding:5px;font-family:arial;font-weight:bold;font-size:13px;border:1px
            solid rgb(221,221,221);line-height:1"><a
              moz-do-not-send="true"
href="https://drive.google.com/file/d/1pVEcmdE--pvkEy_6eWWNzWQHlYk1CyUI/view?usp=drive_web"
              target="_blank"
              style="display:inline-block;max-width:366px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;text-decoration-line:none;padding:1px
              0px;border:none"><img moz-do-not-send="true"
                style="vertical-align: bottom; border: none;"
src="https://ssl.gstatic.com/docs/doclist/images/icon_10_generic_list.png"> <span
                dir="ltr"
                style="vertical-align:bottom;text-decoration:none">Gain30.75.webm</span></a><img
              moz-do-not-send="true"
              src="//ssl.gstatic.com/ui/v1/icons/common/x_8px.png"
              style="opacity: 0.55; cursor: pointer; float: right;
              position: relative; top: -1px; display: none;"></div>
        </div>
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
    Are you operating very close to DC in the baseband?  (That is, the
    LO is very close to the received signal).  You could just be seeing
    the<br>
      dynamic nature of DC offset removal.<br>
    <br>
    The movie won't play for me (probably my fault), so I'm just
    guessing here.  You'll likely see some aggregate phase noise that is
    the sum<br>
      of the phase-noise of the LO splitting electronics, and the
    phase-noise of the RF channels and mixing, etc.<br>
    <br>
    What is the magnitude of the phase noise (after you've accounted for
    the 180deg phase ambiguity due to the 2XLO scheme).<br>
    <br>
    <br>
  </body>
</html>

--------------050008040503010602000908--


--===============7747913946676907515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7747913946676907515==--

