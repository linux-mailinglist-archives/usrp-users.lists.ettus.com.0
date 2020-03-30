Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 688CB19815A
	for <lists+usrp-users@lfdr.de>; Mon, 30 Mar 2020 18:36:21 +0200 (CEST)
Received: from [::1] (port=44166 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jIxOd-0004Cd-7f; Mon, 30 Mar 2020 12:36:19 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:33869)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jIxOZ-00047i-W5
 for usrp-users@lists.ettus.com; Mon, 30 Mar 2020 12:36:16 -0400
Received: by mail-qt1-f169.google.com with SMTP id 10so15630880qtp.1
 for <usrp-users@lists.ettus.com>; Mon, 30 Mar 2020 09:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=kjOtyAf+0GjvP0FdQzzSHy1qI4ViKhrDxFGmaXhFy7A=;
 b=BU29BhspWvLm8KWhVLFkXukoTRofg3cFG0TUvkTAkS89gvGGeLFKWdceZciFcbV7tQ
 1qlYbYCNSFZEVQjVXdWJtrp8VNjtMD23DYXnqbTB+iRHcXlAFGrYm/uZ87IL8J7T54C1
 Z7Mmnj1QA7ktZ+lh8OxG8lEX31VALhgr0EBIWbPZUsqKPFD0P6YnbGs8ErQ1n2VeQGBC
 gyxnUTMRFYeUyu6+JwB9lTnm9XlI3bm/PfRQrNRxQsBYiLa0mIp0Hf6XEQpu3aqrZZso
 4fPrlfsvRRbIgd96PuoMibMSeCDRhb019R1wubpX9L8mIKqPhC9WevW0zx5UQm1LbW1A
 fSkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=kjOtyAf+0GjvP0FdQzzSHy1qI4ViKhrDxFGmaXhFy7A=;
 b=MlqQbopxMtCF/rFM40a//B5vd6Kr7/bPFa06IQ+iGv/T0EDWnN/ZO1YVSJ0mfWoG9O
 hRDD/uuLzlOlOXWvohhSUY0sAr5tdJpKJgoCyM7AgtrpONg9SbWN3DLRSRKFj+b3u/DE
 /KLBhWsxp0jft8jAD+QFhLnjFkFsdXuVeR3NN36AKVZhLqtvpEE7HTU2uj1wE8OWetzt
 S+gRLuyM1O+3nhNg15Yki2szSZXIvR43lAjTHXwc/Xxxe6bSE486kKdkyqZwQYjs3q4M
 spYcnB3TkYJ5pfvwXjz+gUyJ9HU+XeIHjdVuI0mZJzYbSh1SUQ26xBZ/PwCT729lLHy8
 9L7Q==
X-Gm-Message-State: ANhLgQ0eXQ8rw0N8AMCFvvIrBEWNDDvL1EWWRbdK08xRFfaTarzgpfll
 /1hm3+KIAZBigWgJDM6DWHo0Ap8z
X-Google-Smtp-Source: ADFU+vuWFEZp0RFNWxqIPYmUnDQ1OHsObdXkQOjaYXFxDmrDuUoiVK6dDC1L5FF7oLaTJfdIIHepTw==
X-Received: by 2002:ac8:7b2f:: with SMTP id l15mr810109qtu.320.1585586135155; 
 Mon, 30 Mar 2020 09:35:35 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204])
 by smtp.googlemail.com with ESMTPSA id o81sm11009252qke.24.2020.03.30.09.35.33
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Mar 2020 09:35:33 -0700 (PDT)
Message-ID: <5E821FD4.3020708@gmail.com>
Date: Mon, 30 Mar 2020 12:35:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <10F7328F6AD1354BA6DD787687B66B9001A3050D6A@Maui.in.dynetics.com>
 <CADBWrHi0youfPJH1+VVg5AM7bX_DsBt2vmkP09XAJxevzPmBAg@mail.gmail.com>
In-Reply-To: <CADBWrHi0youfPJH1+VVg5AM7bX_DsBt2vmkP09XAJxevzPmBAg@mail.gmail.com>
Subject: Re: [USRP-users] X310 UHD 3.15 Lockups
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============1080553345142847189=="
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
--===============1080553345142847189==
Content-Type: multipart/alternative;
 boundary="------------050201000000070302000907"

This is a multi-part message in MIME format.
--------------050201000000070302000907
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 03/30/2020 11:19 AM, Sam Reiter via USRP-users wrote:
> Ryan,
>
> In that example, line 93 sets the USRP's internal sense of time to 
> 0.0s, after which point this sense of time ticks up. Any timed 
> commands you issue to the USRP need to occur in the future, relative 
> to the USRP's sense of time. In this case, you have to give a "--secs" 
> value greater than 0.0 + the latency for the stream command to be 
> processed and sent to the radio over Ethernet (probably hundreds of 
> microseconds).
>
> As far as initialization of timespec, I'm not sure what it should 
> initialize to by default. But for the intermittent, 
> race-condition-esque behavior you're describing, it couldn't hurt to 
> set all of those times explicitly.
>
> -Sam
Local variables aren't explicitly initialized to anything in particular, 
at least in C, and as I recall, C++ as well.  Since they reside on the 
stack,
   they'll have whatever in them unless explicitly initialized.


>
> On Mon, Mar 30, 2020 at 9:37 AM Carmichael, Ryan 
> <Ryan.Carmichael@dynetics.com <mailto:Ryan.Carmichael@dynetics.com>> 
> wrote:
>
>     *From:*Sam Reiter <sam.reiter8@gmail.com
>     <mailto:sam.reiter8@gmail.com>>
>     *Sent:* Sunday, March 29, 2020 1:15 PM
>     *To:* Carmichael, Ryan <Ryan.Carmichael@dynetics.com
>     <mailto:Ryan.Carmichael@dynetics.com>>
>     *Cc:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>     *Subject:* [EXTERNAL] Re: [USRP-users] X310 UHD 3.15 Lockups
>
>     I would suspect that your setting of the time_spec with an
>     uninitialized value could be a problem. rx_multi_samples sets up
>     multi-channel RX with an initialized time_spec:
>
>     https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/examples/rx_multi_samples.cpp
>
>     Can you compile and run that example on 3.15?
>
>     -Sam
>
>     Sam,
>
>     Thanks for the suggestion. time_spec uninitialized takes the
>     default of zero, right?
>
>     If I run rx_multi_samples with --secs 0, I get an error “Error:
>     Receiver error ERROR_CODE_LATE_COMMAND”, which we aren’t seeing in
>     our usage (instead we just see it never return).
>
>     If I run rx_multi_samples with another value (like --secs 0.1) it
>     works fine.
>
>     But the code I showed works 99.9% of the time. But when we run it
>     for hours on end, it eventually locks up. I can try running
>     rx_multi_samples with a very large --nsamps but that testing will
>     take a while.
>
>     Thanks,
>
>     Ryan
>
>     /
>     ------------------------------------------------------------------------
>
>     The information contained in this message, and any attachments,
>     may contain privileged and/or proprietary information that is
>     intended solely for the person or entity to which it is addressed.
>     Moreover, it may contain export restricted technical data
>     controlled by Export Administration Regulations (EAR) or the
>     International Traffic in Arms Regulations (ITAR). Any review,
>     retransmission, dissemination, or re-export to foreign or domestic
>     entities by anyone other than the intended recipient in accordance
>     with EAR and/or ITAR regulations is prohibited.
>
>     /
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------050201000000070302000907
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/30/2020 11:19 AM, Sam Reiter via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CADBWrHi0youfPJH1+VVg5AM7bX_DsBt2vmkP09XAJxevzPmBAg@mail.gmail.com"
      type="cite">
      <div dir="ltr">Ryan,
        <div><br>
        </div>
        <div>In that example, line 93 sets the USRP's internal sense of
          time to 0.0s, after which point this sense of time ticks up.
          Any timed commands you issue to the USRP need to occur in the
          future, relative to the USRP's sense of time. In this case,
          you have to give a "--secs" value greater than 0.0 + the
          latency for the stream command to be processed and sent to the
          radio over Ethernet (probably hundreds of microseconds).</div>
        <div><br>
        </div>
        <div>As far as initialization of timespec, I'm not sure what it
          should initialize to by default. But for the intermittent,
          race-condition-esque behavior you're describing, it couldn't
          hurt to set all of those times explicitly. </div>
        <div><br>
        </div>
        <div>-Sam</div>
      </div>
    </blockquote>
    Local variables aren't explicitly initialized to anything in
    particular, at least in C, and as I recall, C++ as well.  Since they
    reside on the stack,<br>
      they'll have whatever in them unless explicitly initialized.<br>
    <br>
    <br>
    <blockquote
cite="mid:CADBWrHi0youfPJH1+VVg5AM7bX_DsBt2vmkP09XAJxevzPmBAg@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Mon, Mar 30, 2020 at 9:37
          AM Carmichael, Ryan &lt;<a moz-do-not-send="true"
            href="mailto:Ryan.Carmichael@dynetics.com" target="_blank">Ryan.Carmichael@dynetics.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div lang="EN-US">
            <div>
              <p class="MsoNormal"><b><span
                    style="font-size:11pt;font-family:Calibri,sans-serif">From:</span></b><span
                  style="font-size:11pt;font-family:Calibri,sans-serif">
                  Sam Reiter &lt;<a moz-do-not-send="true"
                    href="mailto:sam.reiter8@gmail.com" target="_blank">sam.reiter8@gmail.com</a>&gt;
                  <br>
                  <b>Sent:</b> Sunday, March 29, 2020 1:15 PM<br>
                  <b>To:</b> Carmichael, Ryan &lt;<a
                    moz-do-not-send="true"
                    href="mailto:Ryan.Carmichael@dynetics.com"
                    target="_blank">Ryan.Carmichael@dynetics.com</a>&gt;<br>
                  <b>Cc:</b> <a moz-do-not-send="true"
                    href="mailto:usrp-users@lists.ettus.com"
                    target="_blank">usrp-users@lists.ettus.com</a><br>
                  <b>Subject:</b> [EXTERNAL] Re: [USRP-users] X310 UHD
                  3.15 Lockups</span></p>
              <p class="MsoNormal"> </p>
              <div>
                <p class="MsoNormal">I would suspect that your setting
                  of the time_spec with an uninitialized value could be
                  a problem. rx_multi_samples sets up multi-channel RX
                  with an initialized time_spec:</p>
                <div>
                  <p class="MsoNormal"> </p>
                </div>
                <div>
                  <p class="MsoNormal"><a moz-do-not-send="true"
href="https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/examples/rx_multi_samples.cpp"
                      target="_blank">https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/examples/rx_multi_samples.cpp</a></p>
                </div>
                <div>
                  <p class="MsoNormal"> </p>
                </div>
                <div>
                  <p class="MsoNormal">Can you compile and run that
                    example on 3.15?</p>
                </div>
                <div>
                  <p class="MsoNormal"> </p>
                </div>
                <div>
                  <p class="MsoNormal">-Sam<span
                      style="color:rgb(31,73,125)"></span></p>
                  <div
                    style="border-top:none;border-right:none;border-left:none;border-bottom:1pt
                    solid windowtext;padding:0in 0in 1pt">
                    <p class="MsoNormal" style="border:none;padding:0in"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"> </span></p>
                  </div>
                  <p class="MsoNormal"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"> </span></p>
                  <p class="MsoNormal"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"> </span></p>
                  <p class="MsoNormal"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">Sam,</span></p>
                  <p class="MsoNormal"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"> </span></p>
                  <p class="MsoNormal"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">Thanks
                      for the suggestion. time_spec uninitialized takes
                      the default of zero, right?
                    </span></p>
                  <p class="MsoNormal"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"> </span></p>
                  <p class="MsoNormal"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">If
                      I run rx_multi_samples with --secs 0, I get an
                      error “Error: Receiver error
                      ERROR_CODE_LATE_COMMAND”, which we aren’t seeing
                      in our usage (instead we just see it never
                      return).</span></p>
                  <p class="MsoNormal"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"> </span></p>
                  <p class="MsoNormal"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">If
                      I run rx_multi_samples with another value (like
                      --secs 0.1) it works fine.</span></p>
                  <p class="MsoNormal"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"> </span></p>
                  <p class="MsoNormal"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">But
                      the code I showed works 99.9% of the time. But
                      when we run it for hours on end, it eventually
                      locks up. I can try running rx_multi_samples with
                      a very large --nsamps but that testing will take a
                      while.</span></p>
                  <p class="MsoNormal"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"> </span></p>
                  <p class="MsoNormal"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">Thanks,</span></p>
                  <p class="MsoNormal"><span
style="font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">Ryan
                    </span></p>
                </div>
              </div>
            </div>
            <i><br>
              <hr>
              <p style="font-size:8pt;line-height:9pt">The information
                contained in this message, and any attachments, may
                contain privileged and/or proprietary information that
                is intended solely for the person or entity to which it
                is addressed. Moreover, it may contain export restricted
                technical data controlled by Export Administration
                Regulations (EAR) or the International Traffic in Arms
                Regulations (ITAR). Any review, retransmission,
                dissemination, or re-export to foreign or domestic
                entities by anyone other than the intended recipient in
                accordance with EAR and/or ITAR regulations is
                prohibited.</p>
            </i>
          </div>
        </blockquote>
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
    <br>
  </body>
</html>

--------------050201000000070302000907--


--===============1080553345142847189==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1080553345142847189==--

