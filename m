Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE4486A92
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 21:29:22 +0200 (CEST)
Received: from [::1] (port=51560 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvo6C-0002RF-Nu; Thu, 08 Aug 2019 15:29:20 -0400
Received: from mail-qt1-f179.google.com ([209.85.160.179]:41318)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hvo68-0002Kx-M5
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 15:29:16 -0400
Received: by mail-qt1-f179.google.com with SMTP id d17so14467342qtj.8
 for <usrp-users@lists.ettus.com>; Thu, 08 Aug 2019 12:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=4w2GEXhIkcFOPmVNB3jgawwdrSyo2KQBiL9/Z2CRVBA=;
 b=eSpmO8F5EVwV38boaCARIbX45n9wBQguWF+UZXO1+Bk3l+FxmUdTu3h1v23mJ8ITpU
 SMOT6JGnMzWHsrq/gpTKVrIgy8twvFRf7cyeIOj+x4nmRrt/rQ3/xSggRDKWU8zSEzgU
 rs58ZYslecjQxvJ/wSzywqo+/wjlpz4c4I5iZjFH1NlS/DdV1D4NPzHcgDlxjPuIU+O/
 tWN2r9a517vFdP4NsfkxfzwxSCDOHSFgB7sUncKf0G+Wp2kN7kshxNDQRftZHzmYngyF
 kQQoruP9PzgCYebWioS2x4yGKPnp9hUVdAHBb6rN2Cty/SnNW/I71KK7TGDn8n4EwFbM
 c9Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=4w2GEXhIkcFOPmVNB3jgawwdrSyo2KQBiL9/Z2CRVBA=;
 b=sCEakBSHxz5x871pL6UTXOCVmxz0z5r8FGq0MTwxyFyihgBlXqT2CFngy3AoWHnW6p
 pmQ6FNaxoqioqT6C70zm6dXpAsOEfs9tvOa33c6KcdrAwmYZySTk9cyA304HP56aAVbN
 x+qk0OApTNDIx8scUnq4tbQh6c5ZA6Y2nwJoEL1XWK2GYLc94GLjsTapwL+d+CNn38at
 mhYl9SS/2tYrOC/Zr6JPbkilql49w82cndbrXdzZXlDPiMWUwC75HXBxuMWgF8qKZ4BN
 /B5glBPWa/oiDVXt/HkwKblfI+EE1RUhkSVTuEypLm+nwusLE/708+/wg9nGY4SAy36+
 5Y8g==
X-Gm-Message-State: APjAAAUNbOSFRW04vyXVNxo43EsdlayQ5hzdMUn0R9w9lt0qHJOLLXYw
 AVKW1nuxAk4c8X2TshQ0taaiZu/e
X-Google-Smtp-Source: APXvYqyU3iCHFfBK3MGshy2I7PYBWjdjVMII36ZXYv/alZNddplQcrPevsnlfG+96W127BIAoB1wSg==
X-Received: by 2002:aed:3b94:: with SMTP id r20mr14487903qte.207.1565292515272; 
 Thu, 08 Aug 2019 12:28:35 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id 2sm49872622qtz.73.2019.08.08.12.28.34
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 12:28:34 -0700 (PDT)
Message-ID: <5D4C77E2.9080709@gmail.com>
Date: Thu, 08 Aug 2019 15:28:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAC8T01neWOsGOZ4ezt5wf4owgc9ftjcZ-O2EAHgtzAA7wGOKoA@mail.gmail.com>
In-Reply-To: <CAC8T01neWOsGOZ4ezt5wf4owgc9ftjcZ-O2EAHgtzAA7wGOKoA@mail.gmail.com>
Subject: Re: [USRP-users] x310 cannot receive data
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
Content-Type: multipart/mixed; boundary="===============3848950205648828974=="
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
--===============3848950205648828974==
Content-Type: multipart/alternative;
 boundary="------------040501070604030701030901"

This is a multi-part message in MIME format.
--------------040501070604030701030901
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 08/08/2019 12:16 PM, ishai alouche via USRP-users wrote:
> Hi,
>
> I am using X310 and i try to create very simple setup.
>
> The gnu-radio include the following blocks:
> *RFNoC:* Radio --> *RFNoC: *DDC --> Copy --> Sink.
>
> The input signal came from synthesizer.
>
> I run the gnu-radio and the sink window open but I don't receive any 
> data. When I start the running the X310 turn-on to red the led called 
> link (near to the GPS led).
>
> can someone please explain me what is the meaning of the red led? This 
> is the problem?
>
> Another little issue, the X310 can work without gnu-radio at all? i.e. 
> work only with gnu-radio blocks and without any RFNoC blocks?
>
> Thank in advance
> Ishai
>
> -- 
> ישי אלוש
> 054-5823400
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
You'd be best to include your complete flow-graph, and a better 
explanation of what you mean by "cannot receive data".

Also, there's no requirement to use RFNOC with X310 if your performance 
requirements don't require it.  You can use a more
   "conventional" UHD source/sink blocks approach without ever using RFNOC.



--------------040501070604030701030901
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/08/2019 12:16 PM, ishai alouche
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAC8T01neWOsGOZ4ezt5wf4owgc9ftjcZ-O2EAHgtzAA7wGOKoA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">
              <div>
                <div>
                  <div>Hi,<br>
                    <br>
                  </div>
                  I am using X310 and i try to create very simple setup.<br>
                  <br>
                </div>
                The gnu-radio include the following blocks:<br>
              </div>
              <b>RFNoC:</b> Radio --&gt; <b>RFNoC: </b>DDC --&gt; Copy
              --&gt; Sink.<br>
              <br>
            </div>
            <div>The input signal came from synthesizer.<br>
              <br>
            </div>
            <div>I run the gnu-radio and the sink window open but I
              don't receive any data. When I start the running the X310
              turn-on to red the led called link (near to the GPS led).<br>
              <br>
            </div>
            <div>can someone please explain me what is the meaning of
              the red led? This is the problem?<br>
              <br>
            </div>
            <div>Another little issue, the X310 can work without
              gnu-radio at all? i.e. work only with gnu-radio blocks and
              without any RFNoC blocks?<br>
              <br>
            </div>
            <div>Thank in advance<br>
            </div>
            <div>Ishai <br clear="all">
            </div>
            <div dir="ltr">
              <div>
                <div>
                  <div>
                    <div><br>
                      -- <br>
                      <div dir="ltr" class="gmail_signature">
                        <div dir="ltr">
                          <div>ישי אלוש</div>
                          <div>054-5823400</div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
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
    You'd be best to include your complete flow-graph, and a better
    explanation of what you mean by "cannot receive data".<br>
    <br>
    Also, there's no requirement to use RFNOC with X310 if your
    performance requirements don't require it.  You can use a more<br>
      "conventional" UHD source/sink blocks approach without ever using
    RFNOC.<br>
    <br>
    <br>
  </body>
</html>

--------------040501070604030701030901--


--===============3848950205648828974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3848950205648828974==--

