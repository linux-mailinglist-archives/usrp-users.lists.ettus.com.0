Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 840352C0A5F
	for <lists+usrp-users@lfdr.de>; Mon, 23 Nov 2020 14:22:51 +0100 (CET)
Received: from [::1] (port=47608 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khBnt-00027P-P6; Mon, 23 Nov 2020 08:22:49 -0500
Received: from srv-frontsmtp1.insa-toulouse.fr ([195.83.9.38]:49930)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_DHE_RSA_WITH_AES_128_CBC_SHA
 (Exim 4.93) (envelope-from <dimercur@insa-toulouse.fr>)
 id 1khBnp-0001zZ-KX
 for usrp-users@lists.ettus.com; Mon, 23 Nov 2020 08:22:45 -0500
Received: from i-mel.insa-toulouse.fr ([195.83.9.6])
 by srv-frontsmtp1.insa-toulouse.fr with esmtp (Exim 4.82)
 (envelope-from <dimercur@insa-toulouse.fr>)
 id 1khBn9-0003ZC-HQ; Mon, 23 Nov 2020 14:22:03 +0100
Received: from localhost (localhost [127.0.0.1])
 by i-mel.insa-toulouse.fr (Postfix) with ESMTP id 7EB8AC5D67;
 Mon, 23 Nov 2020 14:21:57 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at 
Received: from i-mel.insa-toulouse.fr ([127.0.0.1])
 by localhost (i-mel.insa-toulouse.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cN8dPbNJ3y8f; Mon, 23 Nov 2020 14:21:57 +0100 (CET)
Received: from [10.2.5.43] (insa-08256.insa-toulouse.fr [10.2.5.43])
 (Authenticated sender: dimercur)
 by i-mel.insa-toulouse.fr (Postfix) with ESMTPSA id 627C7C13D7;
 Mon, 23 Nov 2020 14:21:55 +0100 (CET)
To: Philip Balister <philip@balister.org>, usrp-users@lists.ettus.com
References: <3d725267-832c-ea0f-ae74-8040f9d0504a@insa-toulouse.fr>
 <b18a6a8d-57fe-8d67-eb21-3a4bb268c653@balister.org>
Message-ID: <01853c24-f428-2970-baee-5ad822fdbdb6@insa-toulouse.fr>
Date: Mon, 23 Nov 2020 14:21:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <b18a6a8d-57fe-8d67-eb21-3a4bb268c653@balister.org>
Content-Language: fr-FR
X-Bm-Milter-Handled: 6c19ab42-660a-4c65-ad32-50deaee95f8c
X-Bm-Transport-Timestamp: 1606137717423
Subject: Re: [USRP-users] USRP E100/E110 linux update
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
From: =?utf-8?q?S=C3=A9bastien_DI_MERCURIO_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?S=c3=a9bastien_DI_MERCURIO?= <dimercur@insa-toulouse.fr>
Content-Type: multipart/mixed; boundary="===============7087248712599091642=="
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
--===============7087248712599091642==
Content-Type: multipart/alternative;
 boundary="------------248F9870DBE1538CDDB215CE"
Content-Language: fr-FR

This is a multi-part message in MIME format.
--------------248F9870DBE1538CDDB215CE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Philips,

thank you for your answer. I will have a look to your git repository. 
I'm not very good with linux kernel intrinsics but I will try to have 
driver work with newer kernel.

If I succed, i will post my results.

Thank you !

Le 23/11/2020 à 14:10, Philip Balister a écrit :
> On 11/23/20 7:09 AM, Sébastien DI MERCURIO via USRP-users wrote:
>> Hi,
>>
>> I've got several USRP E100/E110 with outdated Linux and Gnuradio
>> software on it. So I decided to build a Yocto image, more up-to-date and
>> succeeded in after several tries.
>> The new image boots and run a reasonable updated version of Linux and
>> Gnuradio.
>>
>> But, because of Ettus proprietary kernel driver, I cannot connect to
>> FPGA and so the board is useless.
> It's an open driver, just non of us remember how it works. I did find
> the code:
>
> https://github.com/balister/linux-omap-philip
>
> The linux DMA architecture has likely changed, so the driver will need
> work, but the code is out there. Let me know if you have questions, it
> would be great to see these running. I'll answer as best I can. It has
> been like 6-7 years since I last looked at it though.
>
> Using it like an N-series is likely not possible. The fpga is connected
> to the Overo via the GPMC (General Purpose Memory Controller).
>
> Philip
>
>> My questions are:
>>
>> - Did someone achieve to get an updated Linux base and Gnuradio
>> software, with working FPGA communications (whatever the method)
>>        - Is it possible to get source code of Ettus kernel driver, as the
>> board is now End-of-life
>>        - Is it possible to enable Ethernet communication pass-throughto
>> FPGA, a bit like in N series, in order to use it over Ethernet(not
>> standalone)
>>
>> Regards!
>>
>> Sebastien
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> .
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
-- 
INSA Toulouse

*Sébastien DI MERCURIO*
*Ingénieur d'étude Systèmes embarqués et IoT*
Département GEI
Tél. : 05 61 55 98 34
dimercur@insa-toulouse.fr <mailto:dimercur@insa-toulouse.fr>

INSA Toulouse
135 avenue de Rangueil
31077 Toulouse CEDEX 04
*www.insa-toulouse.fr <http://www.insa-toulouse.fr>*
**
****

--------------248F9870DBE1538CDDB215CE
Content-Type: multipart/related;
 boundary="------------6C5E01D59E7142A5FBCC3EC2"


--------------6C5E01D59E7142A5FBCC3EC2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><font size="-1">Hi Philips,</font></p>
    <p><font size="-1">thank you for your answer. I will have a look to
        your git repository. I'm not very good with linux kernel
        intrinsics but I will try to have driver work with newer kernel.</font></p>
    <p><font size="-1">If I succed, i will post my results.</font></p>
    <p><font size="-1">Thank you !</font><br>
    </p>
    <div class="moz-cite-prefix">Le 23/11/2020 à 14:10, Philip Balister
      a écrit :<br>
    </div>
    <blockquote type="cite"
      cite="mid:b18a6a8d-57fe-8d67-eb21-3a4bb268c653@balister.org">
      <pre class="moz-quote-pre" wrap="">On 11/23/20 7:09 AM, Sébastien DI MERCURIO via USRP-users wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Hi,

I've got several USRP E100/E110 with outdated Linux and Gnuradio
software on it. So I decided to build a Yocto image, more up-to-date and
succeeded in after several tries.
The new image boots and run a reasonable updated version of Linux and
Gnuradio.

But, because of Ettus proprietary kernel driver, I cannot connect to
FPGA and so the board is useless.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
It's an open driver, just non of us remember how it works. I did find
the code:

<a class="moz-txt-link-freetext" href="https://github.com/balister/linux-omap-philip">https://github.com/balister/linux-omap-philip</a>

The linux DMA architecture has likely changed, so the driver will need
work, but the code is out there. Let me know if you have questions, it
would be great to see these running. I'll answer as best I can. It has
been like 6-7 years since I last looked at it though.

Using it like an N-series is likely not possible. The fpga is connected
to the Overo via the GPMC (General Purpose Memory Controller).

Philip

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
My questions are:

- Did someone achieve to get an updated Linux base and Gnuradio
software, with working FPGA communications (whatever the method)
      - Is it possible to get source code of Ettus kernel driver, as the
board is now End-of-life
      - Is it possible to enable Ethernet communication pass-throughto
FPGA, a bit like in N series, in order to use it over Ethernet(not
standalone)

Regards!

Sebastien









.



_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>

</pre>
      </blockquote>
    </blockquote>
    <div class="moz-signature">-- <br>
      <div>
        <img src="cid:part1.A67CD2FB.F7F2AE15@insa-toulouse.fr"
          alt="INSA Toulouse" width="200">
      </div>
      <br>
      <div
        style="font-size:12px;color:#5E5E5D;font-family:arial,verdana">
        <b>Sébastien DI MERCURIO</b> <br>
        <b>Ingénieur d'étude Systèmes embarqués et IoT</b> <br>
        Département GEI </div>
      <div
        style="font-size:12px;color:#5E5E5D;font-family:arial,verdana">
        Tél. : 05 61 55 98 34 <br>
        <a href="mailto:dimercur@insa-toulouse.fr"
style="font-size:12px;color:#5E5E5D;font-family:arial,verdana;text-decoration:none">dimercur@insa-toulouse.fr</a><br>
        <br>
      </div>
      <div
style="font-size:12px;color:#5E5E5D;font-family:arial,verdana;a:link{color:#E42612}">
        INSA Toulouse <br>
        135 avenue de Rangueil <br>
        31077 Toulouse CEDEX 04<br>
        <b><a href="http://www.insa-toulouse.fr"
style="font-size:12px;color:#E42612;font-family:arial,verdana;text-decoration:none">www.insa-toulouse.fr</a><b><br>
          </b></b></div>
      <b><b> </b></b></div>
  </body>
</html>

--------------6C5E01D59E7142A5FBCC3EC2
Content-Type: image/jpg;
 name="bbkebdlbmdgbkdig."
Content-Transfer-Encoding: base64
Content-ID: <part1.A67CD2FB.F7F2AE15@insa-toulouse.fr>
Content-Disposition: inline;
 filename="bbkebdlbmdgbkdig."

iVBORw0KGgoAAAANSUhEUgAAAMgAAAAsCAMAAAAXUwc4AAAAGXRFWHRTb2Z0d2FyZQBBZG9i
ZSBJbWFnZVJlYWR5ccllPAAAAwBQTFRF+dK9/f7/ent95kYs4wwZ+M21+vr6Wlpc4yAZ5TIj
63NNYWJkSEhK8vLz/fXxUlJU4xsZ9bGRz9DS3N3e4QAa51Iy7X1V/fv69rqd4yoh4eLi5kUn
m5ye/ObZ86WC5kks7YNd/fPs5CcY9K2NcnN15Dkk8qF9+Mat6WlE4hAZ2Nna7u7u8JNu9fX1
7oliamts+dXBzM3P+t3N+tbD9beZ8PDx1dbX4x0Z98Cl4iQZubu8goOF/ezi9r2hnZ6gxMXG
ysvMwcLEuLm7/fHqhYaIyMnK8Zl1/OjdxcbIoqOlo6SmmZqckZKUpaao//j0p6mrwMHCh4iK
3t/gjpCR0tPUsbO07oZg+uDR4hUZqquttLW3ra+w8Zx4k5WX0NHSvb/A6F064ycZy8zN4gYa
6WE+np+h/fj0RERGiYqMrK2v/vv6tre5fX6A/fTu+trJ5kww/O3ljY+R4x8f8JZx98Wr/v79
sLKzlZaYvL2/5T4o/Ovg75Bq86qJ9KmK6m5I4zAf+uHT5OTl4iIe63ZRgIGD5Cwc/vn24ykZ
ZWZo+tfFbW5w9rWW+tzKTU1P741p6GNB9LKU++TW6Fg1VlZY4xkcdXZ451o6XV1f4y0h4yca
/fn3++vi7X9Y4yQZ5CkY4ycg51k351Y04hUc7HpU7HdQ4yoc/v///v7+5CMZ9vb3/N7M+fn5
+Pn5/f39/Pz84yUZ6+vs5+fo+/v86Ojp6urr9vb29/f33+Dh29zd4+TlqKqr7+/w6Onqi4yO
7O3t///+kJGT09TVg4SG8fLyw8TG5ufnnJ2flJaXf4CCt7i66erqiImLX2Bizs/Q/v/++Pj4
v8DCjI2P1tfYmJmbhIWH5ebn7e3u6+zs19jZr7Cy2tvc8/PzpKanx8jJ4uPkq6yun6Gi5OXl
/f38Z2hql5iau7y+//7+s7S2b3By/f3+eHl6/v38/f7+98iv//v4//7/9KqH+MqxPz9B9fb3
+9/P/O/n74pm++zj++3l9bCQ7XtS9KyL9K+P4gAa5CUY////gTBrbwAAESpJREFUeNrEmglY
U9e2gDkBGSukcFCLgILCNaGIaQnB0EJik8pYBIJGkNIYsVBiFVsZqtW+llK00taKUntFO9hz
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
--------------6C5E01D59E7142A5FBCC3EC2--

--------------248F9870DBE1538CDDB215CE--


--===============7087248712599091642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7087248712599091642==--

