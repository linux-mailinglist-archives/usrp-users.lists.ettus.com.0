Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A10A31F463
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 05:19:41 +0100 (CET)
Received: from [::1] (port=49920 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCxGT-0006aN-Ew; Thu, 18 Feb 2021 23:19:37 -0500
Received: from mail-qt1-f175.google.com ([209.85.160.175]:36417)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lCxGP-0006WJ-Pz
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 23:19:33 -0500
Received: by mail-qt1-f175.google.com with SMTP id o21so3145937qtr.3
 for <usrp-users@lists.ettus.com>; Thu, 18 Feb 2021 20:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=K/qsh4FAxTCgsLjA/ybOpgUSxZ/UNubyDc9oKHNalXI=;
 b=Z+Mq6uaad5OsR9IIuIN+QRe5lzyhDfrz1KyrTpS0m99vL5+/Lwz2iUaTp8Q1g+RJCU
 0Wb29WsqluX95suisPsftDAo5WP7pe5ggqt+cerFtA9yWOX9OkxuksRTcmZ3gpVVUZvC
 Z3mBwn7HNwZSu7P4AeGmG5voCS0FbBU9s33IISeN6/tzECryb4alRXeApYXRpHtHMGxE
 LtTA/YBZHxDrp0cioMLLbNafHfwmKJ1ljjeGB/UN5Uou0VcoV9QSCFmZOuKwTf10PHpi
 L51EF79RNpqis4HrLGJKliTysKnOf+0MVhtj0PKMoNaVmhQFOXAd9+Trf4CSGnMzjfs5
 DwNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=K/qsh4FAxTCgsLjA/ybOpgUSxZ/UNubyDc9oKHNalXI=;
 b=B9xNvno5o+Qmd8vDGl6TZpofjjkQhuo1BBJ45OhBhVLuraT57n8c3lmXIzoQkfFxIp
 +FyPae3fUxLWV2Tbi2xQUDcQj7HU19F5JiTH6LjZowmnUDqmBzS/40OTNukzq9uVnbao
 GLNQTVNPP8rUCjID9MH8YEIrT0vWO7bCKBwlfrRP546/Aexo6ewICbQPzw25ApO9d/g7
 1lL1ftiKmGbidxj9Eg94hX6bWSf8uoRiLfFHHO0/bSl+foWrSMiVeGgna7xU3uDbHiHG
 VvyBiCGr/NVX+xcIoyglhKAHSl0RXX2xKkCXG8WAdhXgWwANy64H0u3jxohGm4nxd61m
 zb7A==
X-Gm-Message-State: AOAM5323YhlTpnzEwLRlCzsxnCAxkWUEHRpboO8p21XpdTnNAv6Isf8v
 bWNJ3oRKp6B1+IUntP+yfgXzYDzvyL8=
X-Google-Smtp-Source: ABdhPJwMgyDBGhp/EmdQsjIYGkM3KIW1Vt4M0qBpD0Pnvmql5GrNiHosreTuPle/PDbaTiwa3eOM7w==
X-Received: by 2002:ac8:7b29:: with SMTP id l9mr1945273qtu.183.1613708333021; 
 Thu, 18 Feb 2021 20:18:53 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id 16sm4607662qtz.17.2021.02.18.20.18.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Feb 2021 20:18:52 -0800 (PST)
Message-ID: <602F3C2B.3040405@gmail.com>
Date: Thu, 18 Feb 2021 23:18:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Xiang Ma <marxwolfs@gmail.com>
CC: usrp-users <usrp-users@lists.ettus.com>
References: <CACryqrEA9jJWATSCon3Drp-ngO0QraK7goABm0U0gTFqR_hCdg@mail.gmail.com>
 <023DC74F-683D-4FEF-AAF3-D39619E4791F@gmail.com>
 <CACryqrHMw6jKS4dAF25mhAbbdWH-tLiQ5EBJ1vjc72ac96X_7g@mail.gmail.com>
In-Reply-To: <CACryqrHMw6jKS4dAF25mhAbbdWH-tLiQ5EBJ1vjc72ac96X_7g@mail.gmail.com>
Subject: Re: [USRP-users] x310 two UBX daughterboard receiver
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
Content-Type: multipart/mixed; boundary="===============8751113343544933961=="
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
--===============8751113343544933961==
Content-Type: multipart/alternative;
 boundary="------------060306080109030709090006"

This is a multi-part message in MIME format.
--------------060306080109030709090006
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/18/2021 10:16 PM, Xiang Ma wrote:
> Are there any python code for this? I am using the python interface.
You'll have to kind of infer what to do from the C++ example--there is 
no Python version of that example.


>
> On Thu, Feb 18, 2021 at 7:44 PM Marcus D Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     Well there’s the rx_multi_samples example that is part of the UHD
>     source tree.
>
>     Sent from my iPhone
>
>>     On Feb 18, 2021, at 9:32 PM, Xiang Ma <marxwolfs@gmail.com
>>     <mailto:marxwolfs@gmail.com>> wrote:
>>
>>     ﻿
>>       Do you have any example code? I am still confused.
>>
>>     Thank you.
>>
>>     On Thu, Feb 18, 2021 at 5:50 PM Marcus D Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>         Just create a 2-channel USRP source and specify a subdev of
>>         “A:0 B:0”.
>>
>>
>>
>>         Sent from my iPhone
>>
>>>         On Feb 18, 2021, at 7:38 PM, Xiang Ma via USRP-users
>>>         <usrp-users@lists.ettus.com
>>>         <mailto:usrp-users@lists.ettus.com>> wrote:
>>>
>>>         ﻿
>>>         Hi,
>>>
>>>             I am using a x310 USRP with two UBX daughterboards. Now
>>>         I can transmit and receive the signal in RF A daughterboard
>>>         with command
>>>             self.source.set_antenna("RX2", 0)
>>>             self.sink.set_antenna("TX/RX", 0).
>>>
>>>             Now, I want to transmit the signal in RF A, and receive
>>>         the signal in both RF A and RF B. It is actually 1
>>>         transmitter and 2 receivers. How can I implement this? I
>>>         checked the set_subdev_subdev("B", 1), but it doesn't work.
>>>
>>>         Thank you,
>>>
>>>
>>>
>>>
>>>         -- 
>>>         /*Xiang Ma, */Ph.D. Student
>>>         College of Engineering
>>>         Utah State University
>>>         E-mail:marxwolfs@gmail.com <mailto:marxwolfs@gmail.com>
>>>         _______________________________________________
>>>         USRP-users mailing list
>>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
>>     -- 
>>     /*Xiang Ma, */Ph.D. Student
>>     College of Engineering
>>     Utah State University
>>     E-mail:marxwolfs@gmail.com <mailto:marxwolfs@gmail.com>
>
>
>
> -- 
> /*Xiang Ma, */Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com <mailto:marxwolfs@gmail.com>


--------------060306080109030709090006
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/18/2021 10:16 PM, Xiang Ma wrote:<br>
    </div>
    <blockquote
cite="mid:CACryqrHMw6jKS4dAF25mhAbbdWH-tLiQ5EBJ1vjc72ac96X_7g@mail.gmail.com"
      type="cite">
      <div dir="ltr">Are there any python code for this? I am using the
        python interface.</div>
    </blockquote>
    You'll have to kind of infer what to do from the C++ example--there
    is no Python version of that example.<br>
    <br>
    <br>
    <blockquote
cite="mid:CACryqrHMw6jKS4dAF25mhAbbdWH-tLiQ5EBJ1vjc72ac96X_7g@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, Feb 18, 2021 at 7:44
          PM Marcus D Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="auto">Well there’s the rx_multi_samples example that
            is part of the UHD source tree. <br>
            <br>
            <div dir="ltr">Sent from my iPhone</div>
            <div dir="ltr"><br>
              <blockquote type="cite">On Feb 18, 2021, at 9:32 PM, Xiang
                Ma &lt;<a moz-do-not-send="true"
                  href="mailto:marxwolfs@gmail.com" target="_blank">marxwolfs@gmail.com</a>&gt;
                wrote:<br>
                <br>
              </blockquote>
            </div>
            <blockquote type="cite">
              <div dir="ltr">﻿
                <div dir="ltr">  Do you have any example code? I am
                  still confused.
                  <div><br>
                  </div>
                  <div>Thank you.</div>
                </div>
                <br>
                <div class="gmail_quote">
                  <div dir="ltr" class="gmail_attr">On Thu, Feb 18, 2021
                    at 5:50 PM Marcus D Leech &lt;<a
                      moz-do-not-send="true"
                      href="mailto:patchvonbraun@gmail.com"
                      target="_blank">patchvonbraun@gmail.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class="gmail_quote" style="margin:0px 0px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">
                    <div dir="auto">Just create a 2-channel USRP source
                      and specify a subdev of “A:0 B:0”. 
                      <div><br>
                      </div>
                      <div><br>
                        <br>
                        <div dir="ltr">Sent from my iPhone</div>
                        <div dir="ltr"><br>
                          <blockquote type="cite">On Feb 18, 2021, at
                            7:38 PM, Xiang Ma via USRP-users &lt;<a
                              moz-do-not-send="true"
                              href="mailto:usrp-users@lists.ettus.com"
                              target="_blank">usrp-users@lists.ettus.com</a>&gt;
                            wrote:<br>
                            <br>
                          </blockquote>
                        </div>
                        <blockquote type="cite">
                          <div dir="ltr">﻿
                            <div dir="ltr">Hi,
                              <div><br>
                              </div>
                              <div>    I am using a x310 USRP with two
                                UBX daughterboards. Now I can transmit
                                and receive the signal in RF A
                                daughterboard with command</div>
                              <div>    self.source.set_antenna("RX2", 0)</div>
                              <div>    self.sink.set_antenna("TX/RX",
                                0).</div>
                              <div><br>
                              </div>
                              <div>    Now, I want to transmit the
                                signal in RF A, and receive the signal
                                in both RF A and RF B. It is actually 1
                                transmitter and 2 receivers. How can I
                                implement this? I checked the
                                set_subdev_subdev("B", 1), but it
                                doesn't work.</div>
                              <div><br>
                              </div>
                              <div>Thank you,</div>
                              <div><br>
                              </div>
                              <div><br>
                              </div>
                              <div><br clear="all">
                                <div><br>
                                </div>
                                -- <br>
                                <div dir="ltr">
                                  <div dir="ltr"><font
                                      style="color:rgb(136,136,136)"
                                      face="times new roman, serif"
                                      size="4"><i><b>Xiang Ma, </b></i></font><span
                                      style="color:rgb(136,136,136)">Ph.D.
                                      Student</span>
                                    <div>
                                      <div
                                        style="color:rgb(136,136,136)"><font
                                          color="#444444">College of
                                          Engineering</font></div>
                                      <div><font color="#444444">Utah
                                          State University</font></div>
                                      <div
                                        style="color:rgb(136,136,136)"><font
                                          color="#444444">E-mail:<a
                                            moz-do-not-send="true"
                                            href="mailto:marxwolfs@gmail.com"
                                            style="color:rgb(17,85,204)"
                                            target="_blank">marxwolfs@gmail.com</a></font></div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <span>_______________________________________________</span><br>
                            <span>USRP-users mailing list</span><br>
                            <span><a moz-do-not-send="true"
                                href="mailto:USRP-users@lists.ettus.com"
                                target="_blank">USRP-users@lists.ettus.com</a></span><br>
                            <span><a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                                target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
                          </div>
                        </blockquote>
                      </div>
                    </div>
                  </blockquote>
                </div>
                <br clear="all">
                <div><br>
                </div>
                -- <br>
                <div dir="ltr">
                  <div dir="ltr"><font style="color:rgb(136,136,136)"
                      face="times new roman, serif" size="4"><i><b>Xiang
                          Ma, </b></i></font><span
                      style="color:rgb(136,136,136)">Ph.D. Student</span>
                    <div>
                      <div style="color:rgb(136,136,136)"><font
                          color="#444444">College of Engineering</font></div>
                      <div><font color="#444444">Utah State University</font></div>
                      <div style="color:rgb(136,136,136)"><font
                          color="#444444">E-mail:<a
                            moz-do-not-send="true"
                            href="mailto:marxwolfs@gmail.com"
                            style="color:rgb(17,85,204)" target="_blank">marxwolfs@gmail.com</a></font></div>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br clear="all">
      <div><br>
      </div>
      -- <br>
      <div dir="ltr" class="gmail_signature">
        <div dir="ltr"><font style="color:rgb(136,136,136)" face="times
            new roman, serif" size="4"><i><b>Xiang Ma, </b></i></font><span
            style="color:rgb(136,136,136)">Ph.D. Student</span>
          <div>
            <div style="color:rgb(136,136,136)"><font color="#444444">College
                of Engineering</font></div>
            <div><font color="#444444">Utah State University</font></div>
            <div style="color:rgb(136,136,136)"><font color="#444444">E-mail:<a
                  moz-do-not-send="true"
                  href="mailto:marxwolfs@gmail.com"
                  style="color:rgb(17,85,204)" target="_blank">marxwolfs@gmail.com</a></font></div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------060306080109030709090006--


--===============8751113343544933961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8751113343544933961==--

