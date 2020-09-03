Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 475F725CB77
	for <lists+usrp-users@lfdr.de>; Thu,  3 Sep 2020 22:46:53 +0200 (CEST)
Received: from [::1] (port=57820 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDw8A-0004L0-0w; Thu, 03 Sep 2020 16:46:50 -0400
Received: from resqmta-po-03v.sys.comcast.net ([96.114.154.162]:56620)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1kDw86-00048l-3q
 for usrp-users@lists.ettus.com; Thu, 03 Sep 2020 16:46:46 -0400
Received: from resomta-po-15v.sys.comcast.net ([96.114.154.239])
 by resqmta-po-03v.sys.comcast.net with ESMTP
 id DthYkZMoNejU4Dw7RkJ4WY; Thu, 03 Sep 2020 20:46:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1599165965;
 bh=5ctZsgGfLzB/3ex4cfiWp4vllIyRWTAtwJJu2xxW6RI=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=kK0NX1pJLLxuyEjXaW90EfDjbG1RACbzF8vqUU22qQNku4JfJNW2fnED/v55EER6r
 GcaXReA5FzAiT/bnfhr1BR70M4Wsuv8Lt+PmcKwFXvb4nbLMLzk6FwlAmS0smlfh3G
 vdkl2EiJWTwGSxAUX1A1DZ1PeUCMFtuGLnXi85Dpf7sz4q/x6QzWqMrdjf/+nANLmX
 nrEtPEkfq4vkZ9mCtlQ30H9AKIyWMRS/MYl3AKjXXL95HyiGb6TStwiPMjtjVRoAqb
 hS8PIuvUHo/LPW99xiL+WpRVCLnvodh3hXdFVfzvCbS7hpMKQCYbDbMovHh12nAOB4
 GAxZzQ1doXtCQ==
Received: from [IPv6:2601:647:4200:ea30:f104:f6ca:21dc:71ff]
 ([IPv6:2601:647:4200:ea30:f104:f6ca:21dc:71ff])
 by resomta-po-15v.sys.comcast.net with ESMTPSA
 id Dw7Ikn4FJ2ChdDw7JkLygL; Thu, 03 Sep 2020 20:46:04 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <CANYmVj-oSiMz_v-EpodsX173Q2iMKBPM-WVf2BsSOrZnPQtvUw@mail.gmail.com>
 <CANYmVj8vkBEry_XrQsz4QxYu29bd-mr1uVpwqdPsFLxQ1vSjRA@mail.gmail.com>
 <fd998121-4494-a528-71ac-0b12a52f8311@eurecom.fr>
 <CAGNhwTPhAab289kk_CAV2q2-PCvno44v=CuxMjv2ukrcEmNcVA@mail.gmail.com>
 <CANYmVj8aSNhizY0h1akgQzMJfAyR2J0bW9Zw7zLLaof+jgvV+g@mail.gmail.com>
Message-ID: <1876c7e3-3164-3d4a-4844-e4c9d5be5dd6@comcast.net>
Date: Thu, 3 Sep 2020 13:45:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CANYmVj8aSNhizY0h1akgQzMJfAyR2J0bW9Zw7zLLaof+jgvV+g@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Link going up and down periodically every 45
 seconds on USRP N310
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============5405648277837877922=="
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
--===============5405648277837877922==
Content-Type: multipart/alternative;
 boundary="------------3EB1D8B879648568BAB7215D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3EB1D8B879648568BAB7215D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

If that helps, you can disable individual interfaces from being managed.

In /etc/NetworkManager/NetworkManager.conf

add the lines:

[keyfile]
unmanaged-devices=interface-name:sfp0

Ron

On 9/3/20 12:41, Venkatesh Sathyanarayanan via USRP-users wrote:
> Thanks a lot Michael and cedric for taking time to answer my 
> questions.. I will try to stop the network manager and see if that helps.
>
> Regards
> Venkatesh
>
> On Thursday, September 3, 2020, Michael Dickens 
> <michael.dickens@ettus.com <mailto:michael.dickens@ettus.com>> wrote:
>
>     In my experience, this happens when the networking isn't stable,
>     which can be for all sorts of reasons:
>
>     * connectors / cables are flaky;
>
>     * host SW configuration isn't quite correct;
>
>     * actual NIC has issues, HW or FW / configuration;
>
>     * USRP NIC has issues ... very rare, but it can happen;
>
>     * USRP FPGA has issues ... again rare, but it can happen;
>
>     * USRP filesystem has issues ... could be the FS itself, or
>     configuration ... this happens sometimes & is usually resolved by
>     overwriting the whole SDcard filesystem & starting from "go" there.
>
>     If you're Linux has the network manager, that doesn't help things
>     since it thinks it knows better than you what to be doing.
>
>     There is no "one size fits all" answer unfortunately; just
>     investigate the networking & make sure all of the parts are
>     functional.
>
>     Hope this is useful! - MLD
>
>     On Thu, Sep 3, 2020 at 3:30 AM Cedric Roux via USRP-users
>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     wrote:
>
>         maybe network manager (if you have that thing running) on the
>         computer doing funny things with the interface? I had this
>         issue with some 4g dongles in the past.
>
>         On 2020-09-03 01:01, Venkatesh Sathyanarayanan via USRP-users
>         wrote:
>         > Hi,
>         >
>         > Small correction:
>         >
>         > *Questions:*
>         > I notice that the test stops when the link goes down every
>         45 seconds.
>         > This happens for all types of tests(with and without GUI).
>         > Kindly let me know how to debug this - i.e. why the link
>         goes down every
>         > 45 seconds?
>         >
>         > Regards
>         > Venkatesh
>         >
>         > On Wed, Sep 2, 2020 at 3:10 PM Venkatesh Sathyanarayanan
>         > <vesathya@eng.ucsd.edu <mailto:vesathya@eng.ucsd.edu>
>         <mailto:vesathya@eng.ucsd.edu <mailto:vesathya@eng.ucsd.edu>>>
>         wrote:
>         >
>         >     Hi,
>         >
>         >
>         >     *Setup details:*
>         >     I am using an USRP N310 and I have the host computer
>         connected to
>         >     the USRP via SFP cable. I additionally have a serial
>         connection
>         >     between the two and have a screen session running.
>         >
>         >     *Observation:*
>         >     On the screen session, I noticed the following messages:
>         >     [ 2151.041079] nixge 40000000.ethernet sfp0: Link is Up -
>         >     10Gbps/Full - flow control off
>         >     [ 2195.841088] nixge 40000000.ethernet sfp0: Link is Down
>         >     [ 2196.961090] nixge 40000000.ethernet sfp0: Link is Up -
>         >     10Gbps/Full - flow control off
>         >     [ 2241.761098] nixge 40000000.ethernet sfp0: Link is Down
>         >     [ 2242.881106] nixge 40000000.ethernet sfp0: Link is Up -
>         >     10Gbps/Full - flow control off
>         >     [ 2287.681109] nixge 40000000.ethernet sfp0: Link is Down
>         >     [ 2288.801114] nixge 40000000.ethernet sfp0: Link is Up -
>         >     10Gbps/Full - flow control off
>         >     [ 2333.601129] nixge 40000000.ethernet sfp0: Link is Down
>         >     [ 2334.721127] nixge 40000000.ethernet sfp0: Link is Up -
>         >     10Gbps/Full - flow control off
>         >     [ 2379.521132] nixge 40000000.ethernet sfp0: Link is Down
>         >     [ 2380.641137] nixge 40000000.ethernet sfp0: Link is Up -
>         >     10Gbps/Full - flow control off
>         >     [ 2425.441143] nixge 40000000.ethernet sfp0: Link is Down
>         >     [ 2426.561149] nixge 40000000.ethernet sfp0: Link is Up -
>         >     10Gbps/Full - flow control off
>         >     [ 2471.361159] nixge 40000000.ethernet sfp0: Link is Down
>         >     [ 2472.481166] nixge 40000000.ethernet sfp0: Link is Up -
>         >     10Gbps/Full - flow control off
>         >     [ 2517.281166] nixge 40000000.ethernet sfp0: Link is Down
>         >     [ 2518.401171] nixge 40000000.ethernet sfp0: Link is Up -
>         >     10Gbps/Full - flow control off
>         >   
>          ..........................................................................................................................................................................
>         >   
>          ..........................................................................................................................................................................
>         >
>         >   
>          ..........................................................................................................................................................................
>         >   
>          ..........................................................................................................................................................................
>         >
>         >     *Questions:*
>         >     When I have a GNU radio GRC running with an active GUI
>         displaying
>         >     the spectrum, I see that it halts at the time when the
>         link goes down.
>         >     When I run a file with no GUI active - say IQ samples
>         saved to a
>         >     file, things running in the background and I do not see any
>         >     interruption.
>         >
>         >      1. Kindly let me know why I am seeing this issue of
>         link going down
>         >         every 45 seconds and
>         >      2. also if this could potentially affect my tests (all
>         my tests are
>         >         without any GUI.)
>         >
>         >
>         >     Regards
>         >     Venkatesh
>         >
>         >
>         > _______________________________________________
>         > USRP-users mailing list
>         > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>         >
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>         <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>         >
>
>         _______________________________________________
>         USRP-users mailing list
>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>         <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------3EB1D8B879648568BAB7215D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>If that helps, you can disable individual interfaces from being
      managed.</p>
    <p>In /etc/NetworkManager/NetworkManager.conf</p>
    <p>add the lines:</p>
    <p>[keyfile]<br>
      unmanaged-devices=interface-name:sfp0</p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 9/3/20 12:41, Venkatesh
      Sathyanarayanan via USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANYmVj8aSNhizY0h1akgQzMJfAyR2J0bW9Zw7zLLaof+jgvV+g@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Thanks a lot Michael and cedric for taking time to answer my
      questions.. I will try to stop the network manager and see if that
      helps.
      <div><br>
      </div>
      <div>Regards</div>
      <div>Venkatesh<br>
        <br>
        On Thursday, September 3, 2020, Michael Dickens &lt;<a
          href="mailto:michael.dickens@ettus.com" moz-do-not-send="true">michael.dickens@ettus.com</a>&gt;
        wrote:<br>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div dir="ltr">In my experience, this happens when the
            networking isn't stable, which can be for all sorts of
            reasons:
            <div><br>
            </div>
            <div>* connectors / cables are flaky;</div>
            <div><br>
            </div>
            <div>* host SW configuration isn't quite correct;</div>
            <div><br>
            </div>
            <div>* actual NIC has issues, HW or FW / configuration;</div>
            <div><br>
            </div>
            <div>* USRP NIC has issues ... very rare, but it can happen;</div>
            <div><br>
            </div>
            <div>* USRP FPGA has issues ... again rare, but it can
              happen;</div>
            <div><br>
            </div>
            <div>
              <div>* USRP filesystem has issues ... could be the FS
                itself, or configuration ... this happens sometimes
                &amp; is usually resolved by overwriting the whole
                SDcard filesystem &amp; starting from "go" there.</div>
              <div><br>
              </div>
            </div>
            <div>If you're Linux has the network manager, that doesn't
              help things since it thinks it knows better than you what
              to be doing.</div>
            <div><br>
            </div>
            <div>There is no "one size fits all" answer unfortunately;
              just investigate the networking &amp; make sure all of the
              parts are functional.</div>
            <div><br>
            </div>
            <div>Hope this is useful! - MLD</div>
          </div>
          <br>
          <div class="gmail_quote">
            <div dir="ltr" class="gmail_attr">On Thu, Sep 3, 2020 at
              3:30 AM Cedric Roux via USRP-users &lt;<a
                href="mailto:usrp-users@lists.ettus.com" target="_blank"
                moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">maybe network manager
              (if you have that thing running) on the<br>
              computer doing funny things with the interface? I had this<br>
              issue with some 4g dongles in the past.<br>
              <br>
              On 2020-09-03 01:01, Venkatesh Sathyanarayanan via
              USRP-users wrote:<br>
              &gt; Hi,<br>
              &gt; <br>
              &gt; Small correction:<br>
              &gt; <br>
              &gt; *Questions:*<br>
              &gt; I notice that the test stops when the link goes down
              every 45 seconds. <br>
              &gt; This happens for all types of tests(with and without
              GUI).<br>
              &gt; Kindly let me know how to debug this - i.e. why the
              link goes down every <br>
              &gt; 45 seconds?<br>
              &gt; <br>
              &gt; Regards<br>
              &gt; Venkatesh<br>
              &gt; <br>
              &gt; On Wed, Sep 2, 2020 at 3:10 PM Venkatesh
              Sathyanarayanan <br>
              &gt; &lt;<a href="mailto:vesathya@eng.ucsd.edu"
                target="_blank" moz-do-not-send="true">vesathya@eng.ucsd.edu</a>
              &lt;mailto:<a href="mailto:vesathya@eng.ucsd.edu"
                target="_blank" moz-do-not-send="true">vesathya@eng.ucsd.edu</a>&gt;<wbr>&gt;
              wrote:<br>
              &gt; <br>
              &gt;     Hi,<br>
              &gt; <br>
              &gt; <br>
              &gt;     *Setup details:*<br>
              &gt;     I am using an USRP N310 and I have the host
              computer connected to<br>
              &gt;     the USRP via SFP cable. I additionally have a
              serial connection<br>
              &gt;     between the two and have a screen session
              running.<br>
              &gt; <br>
              &gt;     *Observation:*<br>
              &gt;     On the screen session, I noticed the following
              messages:<br>
              &gt;     [ 2151.041079] nixge 40000000.ethernet sfp0: Link
              is Up -<br>
              &gt;     10Gbps/Full - flow control off<br>
              &gt;     [ 2195.841088] nixge 40000000.ethernet sfp0: Link
              is Down<br>
              &gt;     [ 2196.961090] nixge 40000000.ethernet sfp0: Link
              is Up -<br>
              &gt;     10Gbps/Full - flow control off<br>
              &gt;     [ 2241.761098] nixge 40000000.ethernet sfp0: Link
              is Down<br>
              &gt;     [ 2242.881106] nixge 40000000.ethernet sfp0: Link
              is Up -<br>
              &gt;     10Gbps/Full - flow control off<br>
              &gt;     [ 2287.681109] nixge 40000000.ethernet sfp0: Link
              is Down<br>
              &gt;     [ 2288.801114] nixge 40000000.ethernet sfp0: Link
              is Up -<br>
              &gt;     10Gbps/Full - flow control off<br>
              &gt;     [ 2333.601129] nixge 40000000.ethernet sfp0: Link
              is Down<br>
              &gt;     [ 2334.721127] nixge 40000000.ethernet sfp0: Link
              is Up -<br>
              &gt;     10Gbps/Full - flow control off<br>
              &gt;     [ 2379.521132] nixge 40000000.ethernet sfp0: Link
              is Down<br>
              &gt;     [ 2380.641137] nixge 40000000.ethernet sfp0: Link
              is Up -<br>
              &gt;     10Gbps/Full - flow control off<br>
              &gt;     [ 2425.441143] nixge 40000000.ethernet sfp0: Link
              is Down<br>
              &gt;     [ 2426.561149] nixge 40000000.ethernet sfp0: Link
              is Up -<br>
              &gt;     10Gbps/Full - flow control off<br>
              &gt;     [ 2471.361159] nixge 40000000.ethernet sfp0: Link
              is Down<br>
              &gt;     [ 2472.481166] nixge 40000000.ethernet sfp0: Link
              is Up -<br>
              &gt;     10Gbps/Full - flow control off<br>
              &gt;     [ 2517.281166] nixge 40000000.ethernet sfp0: Link
              is Down<br>
              &gt;     [ 2518.401171] nixge 40000000.ethernet sfp0: Link
              is Up -<br>
              &gt;     10Gbps/Full - flow control off<br>
              &gt;     .............................<wbr>..............................<wbr>..............................<wbr>..............................<wbr>..............................<wbr>.....................<br>
              &gt;     .............................<wbr>..............................<wbr>..............................<wbr>..............................<wbr>..............................<wbr>.....................<br>
              &gt; <br>
              &gt;     .............................<wbr>..............................<wbr>..............................<wbr>..............................<wbr>..............................<wbr>.....................<br>
              &gt;     .............................<wbr>..............................<wbr>..............................<wbr>..............................<wbr>..............................<wbr>.....................<br>
              &gt; <br>
              &gt;     *Questions:*<br>
              &gt;     When I have a GNU radio GRC running with an
              active GUI displaying<br>
              &gt;     the spectrum, I see that it halts at the time
              when the link goes down.<br>
              &gt;     When I run a file with no GUI active - say IQ
              samples saved to a<br>
              &gt;     file, things running in the background and I do
              not see any<br>
              &gt;     interruption.<br>
              &gt; <br>
              &gt;      1. Kindly let me know why I am seeing this issue
              of link going down<br>
              &gt;         every 45 seconds and<br>
              &gt;      2. also if this could potentially affect my
              tests (all my tests are<br>
              &gt;         without any GUI.)<br>
              &gt; <br>
              &gt; <br>
              &gt;     Regards<br>
              &gt;     Venkatesh<br>
              &gt; <br>
              &gt; <br>
              &gt; ______________________________<wbr>_________________<br>
              &gt; USRP-users mailing list<br>
              &gt; <a href="mailto:USRP-users@lists.ettus.com"
                target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
              &gt; <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/<wbr>mailman/listinfo/usrp-users_<wbr>lists.ettus.com</a><br>
              &gt; <br>
              <br>
              ______________________________<wbr>_________________<br>
              USRP-users mailing list<br>
              <a href="mailto:USRP-users@lists.ettus.com"
                target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
              <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/<wbr>mailman/listinfo/usrp-users_<wbr>lists.ettus.com</a><br>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------3EB1D8B879648568BAB7215D--


--===============5405648277837877922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5405648277837877922==--

