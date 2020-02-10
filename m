Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E45F2157D46
	for <lists+usrp-users@lfdr.de>; Mon, 10 Feb 2020 15:19:08 +0100 (CET)
Received: from [::1] (port=47350 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j19ty-0002FN-0t; Mon, 10 Feb 2020 09:19:06 -0500
Received: from smtpsal1.cc.upv.es ([158.42.249.61]:35594 helo=smtpsalv.upv.es)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <borieher@iteam.upv.es>)
 id 1j19tu-0002AV-QF
 for usrp-users@lists.ettus.com; Mon, 10 Feb 2020 09:19:03 -0500
Received: from smtpx.upv.es (smtpxv.cc.upv.es [158.42.249.46])
 by smtpsalv.upv.es (8.14.7/8.14.7) with ESMTP id 01AEILR8023268
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <usrp-users@lists.ettus.com>; Mon, 10 Feb 2020 15:18:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=upv.es; s=default;
 t=1581344301; bh=gc3D47/2TDFy/iyKvdziXz5z5qNJuQE81DdjfnOZtLM=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=bZKpT4ozhhTswf4itmaa44HkT5GIKxrrTn91SM1rwNuGf09MWFD+oC5foXKP9F9v6
 gmLIiaqaGDyLvm09n45F8XyGQj9ic16OaDY1XxoVYT9nCOgJCtRSPkwkZs9hxvPvPE
 1sQ5RSU53ebQ9P7OZYDhV9Lq8rK3A0eZWOZV0nN3eQu1nmij3sJ8oh35E5mg1T+kaE
 kBnmhcmCqpDtnwK5Qhc+29tcDIXhpEzIwqfaurE57TQ3EquYInTjuFJHp/U2aF7OOa
 UDj45wlceiGDEW4JnzL1ORC7BI3/3nMy8sEu6gUVH2XLvQNUVGieuEvzt9seebKqyF
 Ma4TbOGKQYAaQ==
Received: from smtp.upv.es (smtpv.cc.upv.es [158.42.249.16])
 by smtpx.upv.es (8.14.7/8.14.7) with ESMTP id 01AEILDc015363
 for <usrp-users@lists.ettus.com>; Mon, 10 Feb 2020 15:18:21 +0100
Received: from [158.42.160.88] (mcg59.iteam.upv.es [158.42.160.88])
 by smtp.upv.es (8.14.7/8.14.7) with ESMTP id 01AEIKcw005455
 for <usrp-users@lists.ettus.com>; Mon, 10 Feb 2020 15:18:20 +0100
To: usrp-users@lists.ettus.com
References: <49e170dd-3e0d-587a-0520-936fbe758b99@iteam.upv.es>
Message-ID: <6a8529df-c323-db63-d55e-d1f5d22504ee@iteam.upv.es>
Date: Mon, 10 Feb 2020 15:17:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <49e170dd-3e0d-587a-0520-936fbe758b99@iteam.upv.es>
Content-Language: en-US
Subject: Re: [USRP-users] Synchronize USRP using Octoclock
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
From: =?utf-8?q?Borja_I=C3=B1esta_Hern=C3=A1ndez_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Borja_I=c3=b1esta_Hern=c3=a1ndez?= <borieher@iteam.upv.es>
Content-Type: multipart/mixed; boundary="===============5625445834688913868=="
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
--===============5625445834688913868==
Content-Type: multipart/alternative;
 boundary="------------DE848816805F058E68010502"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DE848816805F058E68010502
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hey all,

Running the 
https://github.com/Borjis131/USRP-tests/blob/master/test_clock_synch_b210.cpp 
example with two USRPs works. Even if I use get_time_now() instead of 
get_time_last_pps(). So I don't know why the example shipped with uhd 
doesn't work.

Thanks, Borja.

El 10/2/20 a las 13:44, Borja Iñesta Hernández via USRP-users escribió:
>
> Hi all,
>
> I just set up an Octoclock-G using the guide and now I can ping my 
> device. But checking the test_clock_sync example with my x310 USRP 
> something seems to be working bad. I run ./test_clock_synch 
> --clock-args addr=CLOCK_ADDRESS --usrp-args serial=USRP_SERIAL and 
> every time it has a 1 second offset between the USRP and the Octoclock 
> in all the comparisons. The clock in the USRP is always one second 
> delayed.
>
> And in the test_clock_synch example changing: *(*times)[mboard] = 
> usrp->**get_time_now**(mboard)**.**get_full_secs**();*
>
> to: *(*times)[mboard] = 
> usrp->**get_time_last_pps**(mboard).**get_full_secs**();
> *
>
> Works every time.
>
> So, does anyone know why my USRP is one second delayed when I use 
> get_time_now() even if its supossed to work? Can I assume that my USRP 
> is synchronized to the Octoclock when im using get_time_last_pps()?
>
> For my tests I have used this modified version of test_clock_synch 
> created to work with two USRPs but only using it with one. 
> https://github.com/Borjis131/USRP-tests/blob/master/test_clock_synch_b210.cpp 
> the code is from Urban Hankansson thread 
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2015-January/012227.html
>
> Thanks, Borja.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------DE848816805F058E68010502
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hey all,</p>
    <p>Running the <a class="moz-txt-link-freetext"
href="https://github.com/Borjis131/USRP-tests/blob/master/test_clock_synch_b210.cpp">https://github.com/Borjis131/USRP-tests/blob/master/test_clock_synch_b210.cpp</a>
      example with two USRPs works. Even if I use get_time_now() instead
      of get_time_last_pps(). So I don't know why the example shipped
      with uhd doesn't work.</p>
    <p>Thanks, Borja.<br>
    </p>
    <div class="moz-cite-prefix">El 10/2/20 a las 13:44, Borja Iñesta
      Hernández via USRP-users escribió:<br>
    </div>
    <blockquote type="cite"
      cite="mid:49e170dd-3e0d-587a-0520-936fbe758b99@iteam.upv.es">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>Hi all,</p>
      <p>I just set up an Octoclock-G using the guide and now I can ping
        my device. But checking the test_clock_sync example with my x310
        USRP something seems to be working bad. I run ./test_clock_synch
        --clock-args addr=CLOCK_ADDRESS --usrp-args serial=USRP_SERIAL
        and every time it has a 1 second offset between the USRP and the
        Octoclock in all the comparisons. The clock in the USRP is
        always one second delayed.<br>
      </p>
      <p>And in the test_clock_synch example changing: <b>(*times)[mboard]
          = usrp-&gt;</b><b><span class="pl-c1">get_time_now</span></b><b>(mboard)</b><b>.</b><b><span
            class="pl-c1">get_full_secs</span></b><b>();</b> <br>
      </p>
      <p>to: <b>(*times)[mboard] = usrp-&gt;</b><b><span class="pl-c1">get_time_last_pps</span></b><b>(mboard).</b><b><span
            class="pl-c1">get_full_secs</span></b><b>(); <br>
        </b></p>
      <p>Works every time. <br>
      </p>
      <p>So, does anyone know why my USRP is one second delayed when I
        use get_time_now() even if its supossed to work? Can I assume
        that my USRP is synchronized to the Octoclock when im using
        get_time_last_pps()?</p>
      <p>For my tests I have used this modified version of
        test_clock_synch created to work with two USRPs but only using
        it with one.
        <a class="moz-txt-link-freetext"
href="https://github.com/Borjis131/USRP-tests/blob/master/test_clock_synch_b210.cpp"
          moz-do-not-send="true">https://github.com/Borjis131/USRP-tests/blob/master/test_clock_synch_b210.cpp</a>
        the code is from Urban Hankansson thread
        <a class="moz-txt-link-freetext"
href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2015-January/012227.html"
          moz-do-not-send="true">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2015-January/012227.html</a></p>
      <p>Thanks, Borja.<br>
      </p>
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

--------------DE848816805F058E68010502--


--===============5625445834688913868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5625445834688913868==--

