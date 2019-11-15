Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E0DFE690
	for <lists+usrp-users@lfdr.de>; Fri, 15 Nov 2019 21:47:01 +0100 (CET)
Received: from [::1] (port=55194 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iViUX-0005Cr-J3; Fri, 15 Nov 2019 15:46:53 -0500
Received: from resqmta-po-07v.sys.comcast.net ([96.114.154.166]:60385)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <w6rz@comcast.net>) id 1iViUT-00058a-OM
 for usrp-users@lists.ettus.com; Fri, 15 Nov 2019 15:46:49 -0500
Received: from resomta-po-09v.sys.comcast.net ([96.114.154.233])
 by resqmta-po-07v.sys.comcast.net with ESMTP
 id VgRSicWlT8qWRViToidEiK; Fri, 15 Nov 2019 20:46:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1573850768;
 bh=t2HBoZq0Pb1R7AVJLhx95cswkfN5MJYmagxF3lWcD+M=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=lq47XCA/Koe9coNG7DXO52F8+xnbxlaM3T36ov5m9pSW4hmgwMmneIA/MakelKumI
 JIXWiWe+2bRk9La2as9JLoun8KZcyd5yB8ExqLtXozM0XWq/kZ5DalM07XGABBT5tV
 NDCayfisRhWZgWEJLAyWzFipFVH7X3S0pBkQ8VdkgzjCjG2bdGTm/OuFJUJCyWl1uE
 VuQHbexPBv49t8F/J2bi5yTuJiLeoiVIgU6M1HTVCHhqvO37jtKo3y/KhWMyWGJ0Dy
 7pzzuXhft7HVVdDh0/ReAjokskiG46UnJqX0AjKYDIVhiyn5PtdA4ZRRUAbzkM+Vgx
 GjyXjwb/NjHFg==
Received: from [IPv6:2601:647:4200:ea30:2956:68cc:6be0:7b56]
 ([IPv6:2601:647:4200:ea30:2956:68cc:6be0:7b56])
 by resomta-po-09v.sys.comcast.net with ESMTPSA
 id ViTnif8wzKXKHViTni4qwg; Fri, 15 Nov 2019 20:46:08 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <CAGLe3RnJAJQ=pf1F0SvDfG3AexdS52KRKrQ6CsouhXvAFxyfNg@mail.gmail.com>
 <88768f87-f59e-e5a3-3a17-d884721fc3fa@comcast.net>
 <CABcX43wPiE17s-149n4GKrhwLAArjybpe5dgHyBm9AEQncTDBQ@mail.gmail.com>
 <CAGLe3RntXa0ia0ziNak8SCZBk1+NwT65ywz_wuAWEV5qvNbhsg@mail.gmail.com>
Message-ID: <c43a5604-ef63-8502-af37-041684824036@comcast.net>
Date: Fri, 15 Nov 2019 12:46:07 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAGLe3RntXa0ia0ziNak8SCZBk1+NwT65ywz_wuAWEV5qvNbhsg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Creat a sinwave signal by usrp-b200
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============4272814024555669480=="
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
--===============4272814024555669480==
Content-Type: multipart/alternative;
 boundary="------------1486DA81EF25CBD7D6DED5B0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1486DA81EF25CBD7D6DED5B0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Try reducing the gain in the UHD Sink block. At full output, the 
waveform will be compressed.

You can also set your Signal Source frequency to zero.

Ron

On 11/15/19 07:05, Van-Dung PHAM wrote:
> Dear @Ron,
>
> Thank you for your kindly reply
>
> As you said, I change the frequency to 50MHz-6GHz, and I the 
> Oscilloscope I got the correct frequency as I want
>
> However, the shape of the signal isn't really sinus. The maximum 
> sampling rate of my oscilloscope is 5 GSa/s
>
> Do you think the sample rate could change the shape of the sine 
> waveform? (I set the samp_rate=50MHz)
>
> Best,
>
> Van-Dung
>
> Vào Th 6, 15 thg 11, 2019 vào lúc 13:30 Malik Saad via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> đã viết:
>
>     Dear,
>
>     You can change the signal waveform (fro signal source) from sine
>     to cosine.
>
>     On Fri, Nov 15, 2019 at 9:25 PM Ron Economos via USRP-users
>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     wrote:
>
>         You can't have a center frequency of 1 kHz in your UHD Sink
>         block. The frequency range of the B200 is 50 MHz to 6 GHz.
>
>         If you change the center frequency to 50 MHz, you should see a
>         50.001 MHz signal.
>
>         Be sure to terminate the output of the B200 with 50 ohms. With
>         Gain Type = Normalized, Gain Value = 1 and Amplitude = 1 in
>         the Signal Source, you'll be transmitting at maximum power.
>
>         Ron
>
>         On 11/15/19 00:44, Van-Dung PHAM via USRP-users wrote:
>>         Dear all,
>>
>>         I am a newbie in this domain. I want to generate a cosine
>>         waveform in the output of usrp-B200 (TX/RX). So I make it as
>>         the following picture
>>         image.png
>>         But what I got in the oscilloscope is not a cosine/sine
>>         waveform. I don't know where I have a mistake.
>>
>>         Thank you very much for your answers
>>
>>
>>
>>
>>         _______________________________________________
>>         USRP-users mailing list
>>         USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>         _______________________________________________
>         USRP-users mailing list
>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--------------1486DA81EF25CBD7D6DED5B0
Content-Type: multipart/related;
 boundary="------------6A85DB7A049569C5865C19A1"


--------------6A85DB7A049569C5865C19A1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Try reducing the gain in the UHD Sink block. At full output, the
      waveform will be compressed.<br>
    </p>
    <p>You can also set your Signal Source frequency to zero.<br>
    </p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 11/15/19 07:05, Van-Dung PHAM wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAGLe3RntXa0ia0ziNak8SCZBk1+NwT65ywz_wuAWEV5qvNbhsg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Dear @Ron, 
        <div><br>
        </div>
        <div>Thank you for your kindly reply</div>
        <div><br>
        </div>
        <div>As you said, I change the frequency to 50MHz-6GHz, and I
          the Oscilloscope I got the correct frequency as I want</div>
        <div><br>
        </div>
        <div>However, the shape of the signal isn't really sinus. The
          maximum sampling rate of my oscilloscope is 5 GSa/s</div>
        <div><br>
        </div>
        <div>Do you think the sample rate could change the shape of the
          sine waveform? (I set the samp_rate=50MHz)</div>
        <div><br>
        </div>
        <div>Best,</div>
        <div><br>
        </div>
        <div>Van-Dung</div>
        <div> </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">Vào Th 6, 15 thg 11, 2019
            vào lúc 13:30 Malik Saad via USRP-users &lt;<a
              href="mailto:usrp-users@lists.ettus.com" target="_blank"
              moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
            đã viết:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir="ltr">Dear,
              <div><br>
              </div>
              <div>You can change the signal waveform (fro signal
                source) from sine to cosine.</div>
            </div>
            <br>
            <div class="gmail_quote">
              <div dir="ltr" class="gmail_attr">On Fri, Nov 15, 2019 at
                9:25 PM Ron Economos via USRP-users &lt;<a
                  href="mailto:usrp-users@lists.ettus.com"
                  target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class="gmail_quote" style="margin:0px 0px 0px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
                <div bgcolor="#FFFFFF">
                  <p>You can't have a center frequency of 1 kHz in your
                    UHD Sink block. The frequency range of the B200 is
                    50 MHz to 6 GHz.</p>
                  <p>If you change the center frequency to 50 MHz, you
                    should see a 50.001 MHz signal.</p>
                  <p>Be sure to terminate the output of the B200 with 50
                    ohms. With Gain Type = Normalized, Gain Value = 1
                    and Amplitude = 1 in the Signal Source, you'll be
                    transmitting at maximum power.<br>
                  </p>
                  <p>Ron<br>
                  </p>
                  <div>On 11/15/19 00:44, Van-Dung PHAM via USRP-users
                    wrote:<br>
                  </div>
                  <blockquote type="cite">
                    <div dir="ltr">Dear all,
                      <div><br>
                      </div>
                      <div>I am a newbie in this domain. I want to
                        generate a cosine waveform in the output of
                        usrp-B200 (TX/RX). So I make it as the following
                        picture</div>
                      <div>
                        <div><img
                            src="cid:part3.8D8E9C25.4B6DCB42@comcast.net"
                            alt="image.png" style="margin-right:0px"
                            class="" width="542" height="355"><br>
                        </div>
                      </div>
                      <div>But what I got in the oscilloscope is not a
                        cosine/sine waveform. I don't know where I have
                        a mistake.</div>
                      <div><br>
                      </div>
                      <div>Thank you very much for your answers </div>
                      <div><br>
                      </div>
                      <div><br>
                      </div>
                      <div><br>
                      </div>
                    </div>
                    <br>
                    <fieldset></fieldset>
                    <pre>_______________________________________________
USRP-users mailing list
<a href="mailto:USRP-users@lists.ettus.com" target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                  </blockquote>
                </div>
                _______________________________________________<br>
                USRP-users mailing list<br>
                <a href="mailto:USRP-users@lists.ettus.com"
                  target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                  rel="noreferrer" target="_blank"
                  moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
              </blockquote>
            </div>
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a href="mailto:USRP-users@lists.ettus.com" target="_blank"
              moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
            <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------6A85DB7A049569C5865C19A1
Content-Type: image/png;
 name="image.png"
Content-Transfer-Encoding: base64
Content-ID: <part3.8D8E9C25.4B6DCB42@comcast.net>
Content-Disposition: inline;
 filename="image.png"

iVBORw0KGgoAAAANSUhEUgAAAkUAAAF9CAIAAACF3YvLAAAgAElEQVR4AeydCVxM3RvHn1na
y1CTEu0blfYUEkm0oCjLSyqyr6Es2ddosWdPErKlhMgWWROFFqIoe9pUtMz6/9yZmmaaKaX4
V8583s875957lud877hPZ7m/B8dkMgF9EAFEABFABBCBdk4A387tR+YjAogAIoAIIAIYAeTP
0O8AEUAEEAFEoCMQQP6sI9xF1AdEABFABBAB5M/QbwARQAQQAUSgIxBA/qwj3EXUB0QAEUAE
EAGiQAS2trYCz6OT/yyB69ev/7N9Rx1HBBCBdkFAsD8DgKhT6PnVLu7g3zDSZTz6++ZvcEZt
IAKIQEsIoPnGltBDZREBRAARQATaCgHkz9rKnUB2IAKIACKACLSEAPJnLaGHyiICiAAigAi0
FQLIn7WVO4HsQAQQAUQAEWgJAeTPWkIPlUUEEAFEABFoKwSQP2srdwLZgQggAogAItASAh3N
nzErX0evH9mvlwiJjCN169r3vyXn3vxsLIIANe/SrhVrAkIzKjCM9I/7BpBxJEPfF9UtoYrK
IgKIACKACPxtAg2+f/a3DWmV9qi5x9yN5yf8BCWHqd4GuMwzh68Fet1NKb9/ZbKykOAWqO8v
7958sqSfntcUXXEcXsrIbd6CD52tZQmCs6OziAAigAggAm2TQIcan1U+D9iU8BNEhh2Kiw1e
uTno+P2jwySg6uamnck/2AMvLYfF0wx6kHEkDbNFMXmUqifLzK1OlgDAg6naeBLZ+tKX1OO7
d+4OSyigA0B13qUlLuadsaGeXNf+U/zvFmJna8ZwWo5LZpook3EkVePFcZ9pAIziO1vHa2GV
k3HSqsoO/k8r2+Y9R1YhAogAItARCXQkf0YvfPEoHwB6uVp2ZQ2v8F37j9IHgIKUpyz/BFB8
97Wm3+E9C/TKn4TOdIv8pjRhw8o+wgCgOnlr+IFDqwxF625y5Ys1zp6BNz5oem3Yu2qkVHqs
36jJoR9otRmKbzyWnr7Fb1in8tTDK3ZkVtO/xi3ZfOON3PRj505H71vhYSLdsca+tf1G34gA
IoAItE0CHcmfNYGwzFi/uePsxq9e1p8AtIfn04X0hw7VkACAbv2dJ40fNVihzgdV516Negsg
57Zn06xZPgFB1kJAfRiR9L12MU56wuaVM/6bOteUCJD/8hsFL9FdnQSQHbkx8NCph/nyg+w0
uZxjE2xDWRABRAARQARaQKAj+TMCWd9CDgBenr33DZsYBMa3+9EvAEDW2KRmPYxaRWUAMGnV
FAYHGo6TalZCnCxJAMARiBhCBhNwpEGh96JDV08apMjMOLN9zuhhCx+jCcdmIUWZEQFEABFo
AYG68UgLKmkrRcUMfFcMCp9/+9o0++EPnA3wL88eufETRG38FpiJwXPMyrJTPkt6uSs+DXnE
BGLf0fpSQJCQFgcoyTp/9AhTz9SmF6cvIir2rmoBW94en7NcyaPb8+0JVBDqO8m8Mw6+cvLw
JH4+CdyZ2MXMbGRvo25fH6TfK/v0nQogxpMHHSACiAAigAj8IQIdyp+BkKp7RIpUgG9Q5NWw
3VeBSO5l67N43VpXZSHGRxZA8sghjKitwc/KSCZTgiL+60EE0Jk0b2TMqtg4/6lxPXzunFfj
gBbrvTYmjOa9/kDY2vmAl9EdsWlLoJciEVhDP06uugQOV5l1YXfE9sJqAGG5Pm7LA6061V1F
KUQAEUAEEIE/SgDHZNYuCHG1Y2tr28HixdA/7htkOPtFD5+7SYH6IlxdRckmEHAZb4vinzWB
E8qCCCAC/08CHWn97P/JEbWNCCACiAAi8P8l0LHmGxtmSegx627hrIavoyuIACKACCAC7ZsA
Gp+17/uHrEcEEAFEABFgE0D+DP0SEAFEABFABDoCAeTPOsJdRH1ABBABRAARQP4M/QYQAUQA
EUAEOgKBZvizGh1ei02vKbWavCztXZJS9/4Tl0Y1HJaFWZZ8LOwmW7LjN5jR8nbaDFr7klJX
lP7lsJ1lU0O68BevqwilEAFEABFABDoKgWb4MwFdFreYMHXGaH1cenzAFJvRx95TBeQBYJQ9
iQi7VaMILDAHOokIIAKIACKACLSMQMv8mcLwhev3h13MiJuqCBXXNu1JqaxMWqyDI+nMecKR
LmQUxPsHP8nc72ln6rgsoYxR+mSPk5muQk8dFbtVF7/QgJa309poyBR3Rxdn074uq+4V1ykr
crrGrHi+19PExFBOZ+RKngx8tQHz58sIj4GGinoman0m7H7DNaqrfHNwUn/rgOTvAhrgtIQS
iAAigAggAu2TQMv8GbvPOJLxWCd5gPzklCJ+MSi87LDli011Zh69+uTyFmvhjE0zw+S3JH58
+SRmyIPZS24WMQEo377qLo+Kirl/dGD84u0pHFfIQVr1IVVy3s3klNehhucXcGWo4qut6mXA
lG10n6vv0p/m3A2ZgAlaYR/Gz8zdnh5Rpntjfc06t0afOaahBCKACCACiECbINBKz3a2aBYO
B2LmgWnUorTdpoJ1eOkFyYn0wZP7yeBx4npjxytk3MquAhBRsbdVE8W+bYYSHj/8xokxVotI
RGX0OKPOeDzJaOxIoccPC2oy8Nf2+mNSfOXgOUPkiQA4kS4yYqz+0T5FeHlE9z90fr6B1G+q
6ddagr4RAUQAEUAE2iaB1vBnzNKnZy98BZA3M5IhMBl0Go3OECAKKRAADvMvTBqFxirAZFDo
vyrZmENi1cbfDoGk16fb+8SHeVX819AZRAARQAQQgQ5BoGX+7FNs0IrpHsN1HA9/BPGhfnOM
xSofLzUUkzNc8JRr0hAnLClUVfQTm4okyJoNJNwKe1DEYFaknTn1WddaQxSgOi868kkJg/H9
yelYqnnfrnwiXNW50adTvjMYpalnYil9+srWZOCvTauHhZ34rZAbX6kAzKqigkrWWhlO0sQ7
Iqz3GafpJ3OqO8RtQ51ABBABRAARqEegZf6s8vHpsEMxL5h6dkvDbkW7KwnVq519iO9i5dY7
YZKFWv9516p1/fZ7flnST07DyOl635AAG2kcgKiSaXWItVFv9anPXXYtNOafqhRVNPq529pI
X31K6uidXBlE+WoT7el7eCE+wFapl6HqgPmnP9VOXeJJA1ZG7ul2cPj8mA+Cd2EKNB2dRAQQ
AUQAEWgnBP7/8WJoeTuHeZTsuba2l3A7YfbvmYnixfx79xz1GBFofwRaNj5rf/1FFiMCiAAi
gAh0TAJ8S1V/vZtE5QU3b9e1Ss+PWuDln8ZZfhMzWBx6cKQcoS4HSiECiAAigAggAnwE/v/+
rJ5JBDmXPZdc6p1Eh4gAIoAIIAKIQOME0Hxj43zQVUQAEUAEEIH2QQD5s/Zxn5CViAAigAgg
Ao0TaIY/m9gDR2IL6nP+b7XjddpKAzKux7SEn9WvTgQs23T0cSnrla/qzNrzjbfPe5VedGfH
NJNeWmRNPUU9S1ufU68462i8GVt69LuS/xVJC1UH7M3GdvzTPx0bSlCYcq0cs6Xi8WI1y91v
qMAsjhshT1bfkFENtHcHh/bwvPm91lbq270mOrNulpecs++KIyt36q7SqbtKF7MlDypqc/ze
Nwog8HvcUClEABHoYASa4c+c5/vMm73AVQd7yUzWds682YsXufeRlrWaMmfhHAcloeqskwFb
A44ml/223C8lc+e4MRfVAhLSC9+k5z2OmKeQl1P+27VxbhSTzq858ruS/2KaNtrfEp6XMwEq
0u+U63R7dzu3GoD6+VEKmFh0F2IW3j2WqmhCjT33soqoaD9BKen4g+9sxRPqu9gzhYMmmUsB
4Ls4RKaXfcot+5RbkhzQT5xjKkogAogAIoAI/C6BZvizMUsCN673n9NfFgC0JmzYuD5ozdR+
UsWJR0K2h1yM97VwvgcA6XP15HGaPo/qlKWY5WlHPQb2JJLIOHnjoWuvf8ZeceaX4QeoTN1+
qHTy9kU28tiLaHhx1ZGLljp2xQMwK7KOT7Y2VdEzUDJ3D04tZ2KS/CaO86aPdB5uYDJy5YNS
RgN57GdNth/u7HEm+9EGFwNTM9Veer0m7Ev9SeeV/Oerv2GYuE56w+Ryrr6ugqrchFztue6k
pJRCOrPs2a1v2kM0xBiFN8Nfm6/eOFPkSsSraqLC0CnKTw49ZDk0Su65M6VDJxlKNlx55VO/
XkMOvWO9Al6dvkFvwM4samUyj+VMweEImFUvj84yN9KV1nJcgdEQVGqw+ZhF7qYGvWT03UOS
bqwcbamsqtnb++pXfgXphi1EVxABRAARaLsEmuHPGusEvseEzYs1AKCb+9b9p3Z7aHGUQn4k
+bj4HMsfEHz85FFPyZvb3d1Ofxb4CKUXZz2rVLdSEanfTnXWtjmntHYlvkt/lnlA98TC0CwK
ALXwW6+l52Iu3dupdnZz/LdKQXko+Z+1l8dcunD8P/XeM48kP0l+l/kwVOP04qh8aW7JfxFB
ZesbUXtMlO/XB5/86HNlUUqS6MBBA4wrbr/8UZl9NUd+WG8p5rfbh98YTbUyGDNW4tLJjEqC
nMMk1eRjj4qZQHkXG/nDZoohayzGKIlzM5RW1pBW1ugxKiKvVsNETGesXdm5ix9pANWZZ6+K
uY5QExLR4bH8C4aOPxxB9Yfn4jOvPU3L2tb1xKb4bwxBpao/ZsgsTHj24vHsL0vcwtS33cpN
ixiYGHA8D8ml1N5c9I0IIALtmkAr7dfHSekNHiAPwdkyfRydxykSoTqTjYXyLu5KPgBEe7tF
s88kx7+pmDgQk+HfCnii4PfKyu/ON59249sPcddziSGKSRfSXpXPHhGFDdWqSyjmmLy+iPLQ
gYrCAARlfXJpbsHXSkF5VOxslFnukVb4aMfc4Jvv6UK4kpxiuy+UiXKcu0YvFFB/zwa1SkS1
BmsW7H/xsdfdCuN5ShpKynmJmTldnhDNpsvhvp4//tbMux9JWHyEK2l05LNKY3ObSdobj90p
Hqx9PrrSbpchW8oL38Xh+JPLtlIcG2oSYr0mDf0xO+7j7CllJ66K/xepKAS0z/Usn0DmhCMA
LBzBoocFk0FEbZSLPgmPp+n3VyjNLaLRqgWUUnNy0pXCCRGM9LppmNsrCeNwmpYKP24X0kCN
89dHfYvQMSKACCAC7YZAK/mzX/SX2Nc/IahfJ5Y0Pl5KWQKAJcMPRAIBX6uXT5DWNhDbnZhb
7agvIjVgV2bmt3B722s0JjAZePKwg/EhVpx1JlpeCuCF2ENLPB7HZDAZgvLgiGJEVu2ldxb6
vRgZe2OaqlD+6ZGWD3jV//nrb7Q3Ur2HdH8bd+lqnrK9qpgE2Vps+7WbuALteVrC+efCH797
4aWqjAeglX8XO/JsXV/zQdN6bjh8I8komjLyoC6/MiVvUyI6Y21/LLjy0vRznOSYS0pCUHpd
gOX84QhwBBEC1lMcgYgHBvO7oP5ieVit4QkEgggGBocnYux4TUBHiAAigAi0UwKtNN/IWvDq
IgaQdyEiMvJWbkXtU1JY1cFeDmgPQ48+yMlJv3/C39svqQJAkAy/mJG3l1TYwm03vrCCSlPL
iiqwzSAEWQuHTre2nH2HLcnRSjJT8jiVc5jjuzaWh0kpL8XLa8gKA+3z1VPpP7EHP7fkP39Z
2rfkazffVjCBPwFEWVNLYsL2S8TBOhJAIJuZlOzbk9nDtpf4l2tHPo249uZtcV52cV521tYe
NyKe/cCTbTx1nq5ddpjuOKkn31QqpwO1CVEt1xFVJzYEXOk8zk6JCAIsB75wBLL1x7hMKl9/
a+tH34gAIoAIdFgCrTc+kzCdOcX0dsj1rQuvGwS9v9qnBpmkeeC5IMqCgHDfKaEg3t3AZq66
eO2QrB5VYT3vM6fwSxcP6vmuWkhUTEbPYUmAvhiI9FpybM38mc4q/kwCCGmM2RnTW7FeSRBu
LA9OxnrVqKNzho9WlpHoJqeADZJYkv8bJ1moka32x+2uX7+RTNoeb1+LK49n8SeUiaKqtrrV
21PNzMgEAIL6ALXynT8GmEp/ijuZZ7LUrGYSkag0zEVmV0RSeb/BAyaZlXi8/O+Qjmit1YyS
uP/0OomwMHQafCbpiF2n2kuiWv/ZVxoES+/broDdGn7LgROOYMaHarWZh8ONxcrv15Zmf+Ok
+frLmwEdIQIdioCtrW2H6s8/3Jnr16+3pPf/f339llj/D5b9v4QjQPr6/+AvrR112dbWNupU
i56D7aizHdjUlj9nWm++sQNjRl1DBBABRAARaPMEWm++sc13tWMYWC8cQcfoFOoFIoAIIAIt
J4DGZy1niGpABBABRAAR+P8TQP7s/38PkAWIACKACCACLSeA/FnLGaIaEAFEABFABP7/BJrr
z2h5h4xZKvsamzKrGzO/NeT2G6u/+deQDn3zmaESiAAigAi0GwLN9Ge093EnUlmdyzkTk9WY
Q2u53D4AMOgtl9dvN7cCGYoIIAKIACLQAgLN82e0j7HH00G0r7eDNORGnc5mCXlUJs/QIGOa
+pVAyQrSJpEl3OITFguS26d9vbBsmAyJLKTvFfqWAsAse37E3UqbQCLj5AwHLbvwrhpT4sUC
p8kN83IfIEXSnfm4OGmxDo6kM+dJXSQ0pEPfghuOiiICiAAi0EEJNMufUT9cCUsH0QHT588e
JgN5J8++qRuh4VkCgjWUhNQ9BMntVz48/cVs2mhlWt6FZdtTK3488nFdEvGiy6R1W1ZZVd7Z
5zVqH9tDAlQ9vVBqvXbrkhHd64s5AQDSoe+gP0bULUTg/0SAWfk6ev3Ifr1EsMWUbrIW4xed
fvWD+eOagCDGZFzffTn1g1JQvyTu9XLsIy3NinXc3bCP27pzH6gAZZec5XAksnHoR1ZkjKz1
xmQcSW3ivZ/1L9X0u+EWqz7uG0DGkQx9X9Q9dFsCi/Lxsq+zaSfW4pGwoqGJ+wFsAYnehFaa
kqcllrWkbHPeP6PmXYp8ATjzwd3p0pbm4pFxUVEvl+kaspvHcYSFWXJS+oLk9vF9t+/b4FLW
7dL5NRlvC8tykq5+A+Eha7d720mOrD5/bc3zC48KZhhj9eH77jq0dgIW/AyAX4kf6dC35Jaj
sogAIsBDgJp7zN14fsJPUHKY6m2Ayzxz+Nr26YkppQn7nef7qP5gUt6fO3ApDyT6ubn37YIT
VjTuwvNnNv1zzGxDj+gCENV19JyuI1We++LmlciYPB9XPmE+nmYFHAirNdSikJSR27wFHzpb
8+m1Cqjml6foX0/N8Aq6R9ccPmOBjsj3D5n3M7IKaQDCrdrKL81o9QzN8GfUDzEnsSgwScuH
arLteB998vVSQ02WK6NTGQD0H4XljZgoIS8njsNVCmONMhtdGZOQ7yZRM3TkV+IHQDr0jVBG
lxABRKA5BCqfB2xK+Akiww7FxY6VJwBjgeUkdY/4O1v3F6VtDxwD8OP222OX8ip7OC1avUSd
L7hSZVrg8ugCwPfxv504W4MtOs6sLPxCFwP40Rw7AEBYY8wSwS3SP6Ye373zRQ+hsTMdZD/t
tDLxziA7zbTMPhaTwdSetDXQIWPd3ANPi6TNfEKPbxksQ3t/ec2ijQeuv/kORDnDUX7btsw1
IdXNxlG/peXSANTHefuuNetc553p5XWtdP26b5Dh7BfSDjMGfz19LuW7lNHUkEtbHRTq5HcZ
ZSk7HO033sP38798YomxVF39zex2q2VvhgV5l49mAujODQsPPRMeGuHXVww+nD6bVUWU0ZQF
+Hbz8ImT/msjv9SYhhcXJLfPbbeIur1dV6DcWOsdfGDtkl0ZAAZOFrL1DRKkxA+AdOi5SaI0
IoAI/DYBeuGLR1iMxl6ull1ZT3Z81/6j9AGgMDUFi7X4iw+9KDXxMwD0nuKkKgJMSllRQWFR
4U+cKL7RP9l/UWtTLhdeuI4b7jVEpjIrYv7Iaal6MzwNRYqTg5aEvy5PW+fssfUGftyO43Fh
i3TfnF3g5H2xiMseEbWR9j0AcjYO0SD2MO4zznd7wqcG5jGLbzyWnr7Fb1in8tTDK3bU7Wpn
lD3Z4WC/8Z74sL0Jp5e2BWeGTew1hRs7z6VTGQDGU7zcnJ3GODtN9JraXwjeR53LoCu5rZtu
JPEhdGlgsnL/2kCZLLl9qfLrWxdOWHubm2Rdg5IWQee2uukXR6xfsfmOiNXMw9GzNBqMo1lX
jJVi6dCfvd7F3R7ToWcp6H+YO3y0w7hliWwF/Tod+t7qU5+77FpozBd8jKVDz1eqXkPoEBFA
BP4JAjxLJqweM2vDXjWp/6xxS/mV/7S7qmP/9VqeWoGFpsJO14YZZH+zTjWpysYzdRq/ffsW
vwWOnQFAdfEu/01r52NhTfKzPr25cjYHgJl1wNvNYXLArZ8A5Q9iX2MRt2o+OMkBWxOeHlk5
e2RfHeEPyVfDFjnb+TzG7OX7SE/YvHLGf1PnmhIB8l9+Y+0BxDJ9Prgw+D5xyOFbYbN6itWN
2fjK/9UTzZhv9L7P9K6zDUd2ul7oVHNsuznl8+aa9J7aPJbrkj+uqz2Ajc8LN7IPJKY9K51W
c97AK+KuVwQnE5bQqcuJHYqZB2cyg3lysA6E9Vc/Za6uPY/vMmhtbEbtEfZNywOcuP6s8PO7
OC5SesHN2+wshO6e9+6xkvVKAXDyiJsFZV1iZ+/iejHZlZ1E/0cEEIGORYBA1jfvCqnfsmIe
F3s6kfHAKHgYkwYAXc3Muv76AUmQMbJSgJTPaUdicz1nKffbdPZo+CLPIx9YkIid5KQASgrf
FlFAUYxSmFMMAFLdpIgA2AaRln069egiBDiiKDYD2kW5CxFwPM4TyK4nz8zTZYWpYjIJ0mqc
gFUATErxd1FDF+8QF29gFEb9Z+R69cvd1EKaCf8AR5wsSQCgY6GCAbjD/3aWgu/l9yJis8bN
7y3ZRhzar29Xy5Cj0ogAIoAItGkCYga+flbh3okXJzuOnuqkB5lnDl39ARL2qxeY8U3qCOiI
WG/fzaOOe0YnLRtkem+8Q69ORS9LarOJ9R5jIx157uOBmRNpw+TeXTj+HUDB3kVTBKCB6b3a
ki35JqrYj1EP8M+5uPOMha8VqTjrwenz332uHKrbnkJ9t8feZp/koGEmGt0IH6/crgToYqAr
TYTvTW63x+TwzRQf95DVw0cJX4mZqSPRFlxah/VnSIe+yT9MlBER+LcJCKl5Hn8qFbBk26m4
A9suYCzkJuyLOfSfYtMejwSFUSHPSL2XbTl64VLY1kt4CVmVfqMmT3ZTFwGcuHXAtW0i84PP
Rx8MAZBQs/Ras22Vufgf5i3Se01MOHPxpgMHfFz3g4i0Wh/7WSqciSoAIJCtxo9IOHX73OGr
PxlAJOu5Ltsc3FcSmuHPgCBrs+NyaNlgr4hlw8cIXY2aqtUU7/9ne47ief5Zvh2j9pbH2esY
HFAv2iaB1oznSXl3fIrxnKsiY0Kf7nfq3jSH1japtD+rWv6c4Z8ubX8UkMWIACKACLQOAWHV
iQfu7F82RTH3QR7XBorWqRzV8ocJoL8//jBgVD0igAi0KwI4Cf3/fLD9+ujT7gg0Y3xWI3PC
EnQhKXXvP3Fp1JufzdrQ2jgdtnJjj2kJPwXma3uC/QLNbPWT/GEBqB8iFw5XVVaRUlDXGBOU
WIy9VkIvuLXUwUihp57KsNVx+djWKf4zrW4aqhARQAQQgTZEoBn+rMZqcYsJU2eM1selxwdM
sRl97H19JbPf7ByDjidbTZmzcI6DEt8L+KwqeQX7iY1n/k0jWqMYk05vrpNvbhGi/JBVd169
Lc+76y911DPwRSWUJ65ZfHXAseyXTy/bP5y94s53Jv+Z1ugcqgMRQAQQgTZLoPn+TGH4wvX7
wy5mxE1VhIprm/akVDLL0456DOxJJJFx8sZD117/TAOgfb2w1F5eBhvMiaj2d4/5Sgfmj8zj
0217Y4qfXbT6+6dV1pPSf/Qp8UjI9pC49z9ZEvtdh06dPFCKRBY1mnYwqySpnmD/j8KazNSG
Rfq7DpsxbTCpTs6/kl+qH4BRfG+LtW4vZdPBw+d79bTel0NlVmQdn2xtqqJnoGTuHpxazqTl
7bQ2cZw3faTzcAOTkSsflDJAcB77WZPthzt7nPkoWFSAXhDn56iqY6JlZNJ76sWvFKzamiKn
krZbGw2Z4u7o4mza12XVPdaYi/OjYVY83+tpYmIopzNy5b1ihlA3a0dzJTE8CMlbDlH8mVtM
q8w6e580cUxPcZxIT9cJckkx6cV8Z+riE3DqRQlEABFABDoQgeb7M3bncSTjsU7yAPnJKe8f
+Lj4HMsfEHz85FFPyZvb3d1Of67Ki1qxP5kxYmts1LFDixy0JPDwM8l3tPehxzQbb/+DW6b2
61zbMkdKX6H2DLuF6vQMlfkRQS4yb6NnzDorPFGQYD8ANCLSX51yT2JisLcRji3nL/CuVaVt
9o41CU3KTY5dJZOGBayhZG2bc0prV+K79GeZB3RPLAzNogBQC7/1Wnou5tK9nWpnN8d/qxSU
h5L/WXt5zKULxxvY5sv4ds3/Wu+TT56+Tk1O3jaYjAfgFBnXDU/59lV3eVRUzP2jA+MXb0/h
dj9VH1Il591MTnkdanh+AdelqqyjBz8PmKAvQS3KLiNpkLGBLYGkKFuZ+/Un35k/+LqLQLLo
JCKACCACf5cArw9pVttsMRgcLe/qlXyAL9HebhM892UygJoc/6a6Uw9lMSiIC9m4N/rhT/Uh
RtLU7Li4LyBsExSxdtq0GUsCZ+nWvKzAktJfPHPyyB6884zCViu8XZw9Fk5XB3gW/14dE+wH
kOnj6DzOrrd0rYIm5d0VTKTfZu1276mrts7XBcBE+tlCZcSBG9d4eXqO1gYofFtYDWLmgWnU
orTdpnWvSdALnt7DWY836ITDSRq6OmkJA70g6ULaq/DZI8wGDhk0/2JJ1QdMwk1EeehARWEA
cWV9cmluwVeBeVTsbJTZaqQCOeI76w0QuTBrxsqA0w8/E8WxnTgiXEVEVOxtsTf4RVRshhIe
P/zGNcYTURk9zqgzHk8yGjtSqPYSvSh+xbU3gRwAACAASURBVNSwXpt3O2CeEX0QAUSAh0Dt
ej955p3vTICyqzadybg+u17/xgLJL5b2eZptzgGzLDlwsFZXHIkrBk2t2dhJEllcz3nRxY8c
jSmeyn9hFe+GA56SjRxQXh2aatxTAUcyWZFRv9n6S/KCFvJZVVenB1rhSFY7cmnAv/zfSOMt
v/S7+xuZpU/PXvgKIG9m2Bl7L5zY1z8hqF8n1ivieCllKVnxU3dOhJ+5+ejZg2P+0aH3iK83
YMYy+RXRuKT0ebpDp1TTmcCgVf7G749dkViXzsIABCLm+1hy/oKk+nnaZJnIwJOHHYwPseK8
80jLSwG8ENtp4PE4JoPJEJQHRxQjNvqKvJjBplt3xty+HndpQ/+dlnHxk4C7CJNGobEW3pgM
SiMrcOwWmD+SgyfNzJ1y5YRjNwKAkIxGp9I3hVToLEQv/VAgqiIvwXemEU/LxwCdQAQ6DIGi
U5uOL+s/V/rvd4hBZ+AJjf2xWZl6aH9CfienwP2LLfR433WTsp45y5KWdODwne2T5xqmRblj
/855P6w9BBUVho1tOLinp+ju1odLWJ+3Cv4jPNl8yr7zXrFePnzXapfkL2u92zncccWdZ3t7
YQv5m82UiF/PzhjqGTgkw99QDID69pjvdTUrBbbiF181f/REY7QFN/wpNmjFdI/hOo6HP4L4
UL85FjoO9nJAexh69EFOTvr9E/7efkkVjMI7wccyRfRs/htvpysE1OJChpqDYzeg3lo8YfX+
fXu3LNqTzj2jJqApeuIS38CA9ctD3gPO0EFfQrBgv7BqU0T62dULkOonkE36MW6delbGYP54
di72DQUIXS0cOt3acvYd9u4JrSQzJa+Cb3sHvrE8tG/J126+rWBC/QSj8nN2Cclw2ES/DYv7
l6bm1Hu5pTovOvJJCYPx/cnpWKp5X27huOrc6NMp3xmM0tQzsZQ+fbvSs45MHRM/6NTRKT3Z
kmxi2q59v588++ons+rluRNf+zjpSfOdqRuUCoCNTiECbZqAbaOfRk0nMFM27XhSzvlXXJk8
Q4OM0/R5VAmUrCBtElnC7XZ5VfpSPTJO3mGGp6UESbab8/a46FUWymRcVwvPqE81UyW0L+cX
23SuWdGvAhC0b6DenoDHnIcc/zI/JcN/4KDTpQDfL/iOt92UQeH5Y1jOxst7feCezcYA1Mzb
uVVlz4+4W2kTSGScnOGgZRewlRFa7R6Cmg0H3NsFSutvOCjn39AgcD8Bkazfz1xDWoTHGBZf
/kV6Gt9CPvbM/HRi1QXjNZN78k63QeWbg5P6WwckN11Qq9G72sDF5vuzysenww7FvGDq2S0N
uxXtriQkaR54LsjTuCzcd8ro6RtPvO/RT10ch2cWJR1dPHni8Kk70rsNWuk/RplkHhC13ctM
KGHXytl+Rx6VcX5fDVgmZmGHj9sY8pCi6rxv30RVYgOC/S0R6cfkjnuv2DE8eYqpotHwdQU9
lSXFhER7LTm2pvsxZ5We+t31hsyK/iBg4Um4kTxVaXu8feML6FA/Qf3+1H9sXxU9Y5V+q6u8
lttiqthcH1El0+oQayNB0QBEFY1+7rY20lefkjp650JjRvK6tTfynofY9lTt1F2l+8SrxUyp
geuDbG9PVNU0tL9svmfzwM44/jNcbaEkItDuCOSMjm7ov8b60nuhh/LX45vqb9LCE/if2FD5
OJ4+2MNc9GvCJsfZjw08RqtXZ4evPpTGfgRUPrpKtVsxt78wtqJ//N33JP59AzUaw5w9Ad1r
B1UClvlz5UatW2lEAJB2Xrc3cpE+Zz6I1RtK8ae8V48uRb0BAGk10ac+rksiXnSZtG7LKqvK
O/u8Ru3Lrj8byLNdILOHB8+GA9UvfBsaGoMm6Br/Ij3nychZyAd6fty6/fJLfQ15esP4mbnb
0yPKdG+sr1m9x56gllpwrhnzjYQes+4WzhLQFq6TvmdYgmcYz6XBu288381zBiR1Jx2+Mekw
10keKX2RWmX96syb2AxmN9cdh0IO1eXu0pBgf+Mi/Vxy/oKk+vEk00U3MlcI4aoyd492EdEj
E0BMc/yhm+PrGuYS3a8T5m8wj7BNeGYKqzBfQvlI4giB1WIn60cDqM1IVF5w6/GC2iPWt+XJ
D4Unec4AdB0SFP8iiOskge8M10WURAT+EQKivafPtTszY12IhQJ3j/mDw2CbqQYE7Vw3+G7q
vqSH3T227FgpHnj5/JpPb2uCoBEHBQT5jhJ3+H5p4OZnV55kvMf2DUC0t1s0u+Lk+DcVrrJY
mrUnYELXusFCVQ5rmX/I2u3edpIjq89fW/P8wuPq+c6DlEU3ppIMhjmP6sWtrggA77c5993G
qlfdY50784blNxDmKf6oYIYxd4eAtV1gxHfKzh2p6W+LxfWxDQfB2awNB4pERsFbZTHIiAvZ
WGZi3MfGw0iaAERsP8FWwLMWZHiqatZB7UL+HQcyriRh1Tbc0rP9O+Of1tVB+xTh5aHqdfLi
PN0/rlncDH9WZ2BHStHzLy9w9H9RSf1JVRy9J8yI5++KjtRR1BdEoC0QYMc0EbyW/kfsI3S1
W+/Vo8+eXbXrOSxXRqcyAOg/Csu52xQny4jgCMLYWnlnhc5EoGMpJqP+oj/X1FK9fQMS8B6r
r6E9Adxt/SJNHuu/eaxSJzktE3OtLvTn93+RHZtqqr9dgLsIXnZEvQ0NebGu8gw6jQZEAgEv
YKzKXZqV5l+kFwHgXciv+vTw4Zv4c6ZaXszqktJK4hBX4tVgIJD0+pBfJj7Mm6ar86dXPer+
hOCz//92gjVQY348ZC3xF0wgdHc9+Ozpo6wXaW8vr3Ngx6f9C83Wa4IVDWBt/b/R6mVCh4hA
ByKAY33+Qodw4sZzlgwSqo03RpTRlAX4dvPwiZP+ayO/NN0A2u0lvoGB6/1252Er+qa6AvYN
NFSZqHrTl/nZdXTWHzLcZfgQS60uQgDNL44NEsW7iAHkXYiIjLyV+6Og/oaGSoaA/QSC7K/d
B8C/SC9WXW8hX1TPL+1TbnFednHW+enKBoE3zs1VIQJO0sQ7Iqz3GafpJ3M4U5SCWmqFc23R
n7VCt1AViAAi0B4IsL0aZ9D2Z0wmKDhtdJerqVtIyW3ddCOJD6FLA5OV+9eebULDYhZDcZc3
7LlfzV7R7yxo30BD1bRwmf93ivNuOAC+DQ2Cp+ZoeeEu8qo2azKyNg/WlB95LJfG2QfAtyRf
wb+Q30D/8aQBKyP3dDs4fH5M7Si5gZwtPI3ixbQQ4D9RvOVxHP4JTKiTTSDQuOsS8EIPq05b
W9uc0TXrVPyNqJ8fFXXqOv95dKZ9EWj5c0awk25fFJC1iAAi0DEIcLxdQ46tY3QT9eIPEWje
fCOj/Pnx5bYmGthrEJ2VFPq7rbj6lUvH4g/ZCADNfNedVnh7xzRTbQXsHfseZrbLz72q5FrD
rW8mb+W/eOu+fuHmHdMKrm9109Pu1U2rp9KgWbtTyhjM4pgJep26q3SSl8WRyKIKKp26aw8I
yanbjEsvurNjmkkvLbKmnqKepa3PqVeVAJRs//59vFNrXmGrSPZR67/rNbXknKO243WeFe7m
mYdyIwJthMBfW11rI/1FZrQKgeaMzyivQsaarUymiumMnu7ZU6gg7c7VU7c+r7STb04ljVvd
0Bv1LHH9pr7rXpW61dk64BUo2c5ZpFV2Ozxi70yLj0Ivjzrxv2LPsoa38l+8dd+4/Y1fpWTu
HO92a3js42PmJPqnK37WY6d3Tjw+6WR6GQD13T4L55yQR0EWPFuAKJk7x425bBOZEGIjL8yo
eHdp/5mcckbPP/sSR+O9QFfbNgHOEKdtm9kk6zh9GTJkSJMKoEz/NoFmjM9+PNoQmEwF7XU3
r0UFrty0eWfsvRdJPj1FGnlPvr7CfRPeqH/0Pmp6fxkyK8qaYt9RO5K/Myrrv+suUNGfcx/L
HmwOeQU4031xEXvWrAuPPTGtK5TGBka8owJ77NXqyv0CggkIeve+MnV7aJlH4GxzTH5GqLud
X1Cf1MAzeY3peVWmbj9UOnn7Iht57PUUvLjqyEVLHbnea+F0GiUQgToCzDb8qbOyCSlOP5qQ
F2VBBKAZ/uzz05RSANURozVEgV71vaiooOgHCOOZPxp+T57nlfXUikZy1r1RL9K1j9vWw5HX
og749Xofs2bB3mzQ5H3XXYvScIsAlK/P0n4CqNlYyWHjRpxUbycDYYC3d3NrBaZaW7m/lD+Y
gKBfFr0461mFmpVKrZAiTkq3f7evT97XmiWgDFakUr2uiIAs6BQi0OEIIDfW4W7pX+pQM/wZ
2yIc9uod9d3BfmraXdW1ZW32pL2K49fXr2Bn5lW4L8tpOGedyj6RXvJw15Ip9i4zNidVA7x/
/IEuzXrXnSOuL57bcD1Nwdbayv00vmACBEFa/gJNIxAE6e4Iylp+d75OTx1yD9OZjyqg3vuP
jSwOCqoKnUME2iKBVnZjzPK00An9NFlC9T3k+oxb97yRPx2byaOJq+w8Yvmy0haTg5+WsYN/
CGqPdyFfUI4GzgkQxa+vhQ8l5+zJOAXPOCzWAACzKHpsD1yX0RfLGqiynZ5uhj9TMDEmAby9
GJNTTeg+KvTEEkOuPhP7+t+9f+f5A+y/hxtNat6EFvTKuuCctW/UU16HTtsYlyE/J/benVgv
BQAGlSH4aS24HgBhecPeEgBvbybmY1tVmOVpMc8pAGoDVNjavQCtrdzPfvd+97whmriXx/zn
WnnGfGEAS8ufzm07QVrbUPxtYm7tK4XM8swHhaqD1HjWy7iQYvo70toGYjnsIlIDdmVm3g7W
pZbTmIAX7SxcVfSz5hVRekVJlQhJrBn3krcZdIQI/B8JtLIbq+0JJXvP1KWRGaJ20xatnD9+
YJf8V4WNTe3XFvsT31LWM319nVRKXl70mRuR06AVrIX8gKPJjbg8wdaxRfGj/HRqH3ECAtYD
4Dt3V8gMf1TKxNzZ/fC3ql3/uPyUYHP/4NlmPAMlLVb5mBLh1SqbYePWhF++9+wryy4Rtaa+
Jy+i/uucTHo1DYAoKS3NzLl8/XNtz3nedWc03mKnfn5zegLzySy7ibPWrJ404r/D34A00meS
aq3gc2sr9/MHExD87r2Y0YLJkkeX7EsqZQBQP8f7L8922DiKI1la21fubzEjby+psIXbbnxh
bXiklhVVsP68I8j2tRJPjEjEdpdSv8SHPyYNNP1/aZtw24vSiEBTCfwhN8Zpnpqf9hlAbsiC
pUs2bAg6E3870kYK6N/4lucBGhfXF7Dozj3OE7QngGNDTULOxmthwI5VVgDwLRuLbCjAjCbu
EhC0MA98ovj8WviY0L+YwTjz7JOPSpiMgsTTXwaN6sVxf/UNbrfHzfBnINxz7pmknZ6Duuae
O7Bj05FkMTOn5UscenRp8nvyApX4edGJ9PQK8NQVue9nOfZQmTa59iLvu+7ijbcoarQ05ta6
UcbUxP079p54I2cza9/DA1ybG1tduZ8/mIDgHZ/CegtPHRuQNLmPrryyUvfp+SuiNw1mRY+r
7Sb/t7Ce95lTjtm+g3p2VtGWN3SP67Nksb4YgIiBz4GFVZsNNbVltWzWM+edWKRTuy7HXwk6
gwi0GQJ/2o1xOiqm7TKoE+RH2GvISxsPn7g5NquCCTgi3/J87asxjYvr8yy6H39XK54FjewJ
4FgC1O9fP6bdvZUNIKpvqSYMgsxo3i6BuroFphrQwpfQG2OVdyqxsOBGZMHQ0Zodz53Bv6UP
Up25so/VpqJRt7L+jjikwN8adpJR+sR/gscZ48O31/Xt0py/KRqs8Y9eaPl7+3/UPFQ5NwEc
TvA/au487S79W/ogzKoP18MPHom9ee3e6xIA8oTonD06KdsWzj+UkJlfyXJJok7nX8X0z11q
Oijg84Cz2ecH3x0p4/6w+6zrb9aLB/btv+aTQ3zmskRrq02fh1zMPjVc7NU6C8u1uQNjsjYk
D8GeJFfPdZs2bC+3hpOkU9TnYwOl2ITpH/cNMpz9oha39IjI+4fGKxCBXnSb3wwbxgVHNed7
envSb8xRJFY9X61lJahmBp3GwETx6z82KFnrB02pPpSwSVcYyuKHGuydmXphdGeA8hvDjXZ5
JoeDm9UZ3wTf6+M2qrhWRZYHnzby6bt/TkrUiE615v3fv1v+nKkP5f/epX/DADzJdMXljOcb
2oMz+zfuCOplRyPAqCqukrOdseHU5Qf5Kev1AApTnn3IbHh5vr64PoFHXL/RRfeG1vJrkcqO
99+5aaQcFF/0DXpcyoSW7BLgX5ivbYXrm6OFD1ATsJ49e4MT7T3G8tVq/8/DRmp1yPkcwRNj
XGQ6VJITYq1D9Qp1BhH4Bwionx/VrF5Wp63oPz5Ry9Zarxu8ikkHkNTsJQMPOcvzR7Hl+XpR
xxpugLXoniN3N+Q94Ewc9CUgmZVXWNXBXm7vwYehRx/IOZK+Prp49qXTiRglSd6KSHpDxiyf
2OP1fZfw0JWhc+LncO0S4DKjbpeAtMUAJzOBNRMeLzWxOAyzbz4NMW14JxlLC3/h2Vdzl2m+
wwLWL9cTA/Z2B1GdqQGrFUWc1IWBe1TJa2/7Pfq3/Fn7vU/IckTgXyZw/XpjcsO2trb8cIS6
27n2e3I2/uCtchqIqQycszNgoHxXnQDPG15H/SzH9h2rR4b3Td6uXrPonk5hi+sT3tY0yNoT
QFkQEO47JRTEuxvYzFUXr/c2DTsnjtRvla9h+LJn/kEPpuzyEmQGa5fA7ZDrWxdeNwh6n+AR
eC6oKTUD0PLCx5n7JeX/qILBmqHmGx6dd8cC1k+aqBpKEVF12RsxsDOuVgZPWNFp1lTMpCZ3
nR9t2z0jeKrd1tYW6VW33Zv21y1r+bz2Xzf5322wQ66fNX47/+jzqs0sujfOoCNcbflzBq2f
dYTfAeoDIoAIIAKIAJpvRL8BRAARQAQaJIAW3RtE0/YuoPFZ27snyCJEABFABBCB5hNA/qz5
zFAJRAARQAQQgbZHoMH5RpfxArYMtT37kUV/g0Dju8v+hgWoDUQAEUAEfkVAsD9Dz69fcUPX
EQFEoO0ToOUd6qO/PBVAfUlixopGNOGqX53YeTS36+i57n2w8ISt+vmdHZIl5+w1x+R43k0J
spQEavYu84mlYXdWGXRAiapWRd3at65VjUOVIQKIACLw+wRo7+NOpLKK55yJyaqNbCGovt/W
thdUWaucw4tLUC+ujf7EkYpslVo7eCXIn3XwG4y6hwj8swRoH2OPp4NoX28HaciNOp3Nkh6u
TJ6hQcZp+jyqBEpWkDaJLOEWn7DYwvkeAKTP1ZNnXWKWPT/ibqVNIJFxcoaDll14Vw0gIAw9
80fm8em2vUVIZFwXrf7+aZUChPO56QsU4xcomQ8AJOtFLvm7DqRg0vjsD6P0yR4nM12Fnjoq
dqsufsHiYaEPDwHB840C37fnKffPHKCp13/mVqOOdjAC1A9XwtJB1Hb6/NnXIuIiT559s1pX
t0a2EM8dR1dI3WPz4ttTg7O7uW9d46CirUV55OO6JKJAw2Odr9L9wA37vEbJ694fEb9ifzJj
1NZYt24lL1PfS+DhZ5LvaO9DX2Ttvf1HKZS8ZuBrhPMdNJQly24HzN+8ZoGZw20/5VqubDF+
/Kgdx8d0vr9xynZ3N82n1yd2qb1c/1tM18tPZczay3Oj2KEmqzM2zQyT35r4cbDYi+ARI5bc
7HdsmIxAMZL6Nf0zx4L9GQAgfRAAQJti/pl/CKijHY4ANe9S5AvAmQ/uTpe2NBePjIuKerlM
tyYKMQ7P5QjwXfQHD5CH4GyZPo7O41ja9le/gfCQtdu97SRHVp+/tub5hUfF//VQFoOMuJCN
ZSbGfWw8jKSp2XvivoCwTVDEWscav0Ivopc83BWwuVa///3jDxSo9WeUd3FX8gEg2tstmk07
Of5NxcSB5oFp1K2YZH79W0CQc1o+fP2c0PRD4lhQjoLkRPrgHf1k8DjQGzte4eSt7KphMg2L
ONav7V84btCf/QudR31EBBCBjkqA+iHmZCYAJC0fqsnu4/vok6+XGmqyXBmdygCg/yislTX8
NQV2GPrwMzcfPXtwzD869B7x9QasFJPJ5BRmC+e/NfC5GDWCHvbfyNBCKneIelY+Yl//hKB+
nVjuFC+lLAHsWPZAJBC4fSy7TnGDGb6yI9ddd2RAbThiTmOA43LJdWf/6RRaP/unbz/qPCLQ
UQnkXT6aCaA7Nyw89Ex4aIRfXzH4cPpsVhVRRlMW4NvNwydO+q+N/FLT/Tpt+8hbuQw1e7uu
QLmx1jv4wNoluzIADJwsZIrvBB/LFNGz+W+8na4QUIsLGWoOjt2AemvxhNX79+3dsmhPegWX
cP5lTL+f58MS4wcaJsafk5N+/4S/t19SBUDl46WGYnKGC57WLZTVFSN0H7N8cHrw6Rwq4GXN
BhJuhT0oYjAr0s6c+qxrrYG2O9aRYqWQP6sHBB0iAohARyBw6VQGgPEULzdnpzHOThO9pvYX
gvdR5zLoSm7rphtJfAhdGpis3F+upqssbXup8utbF05Ye7tI3CLo3FY3/eKI9Ss23xGxmnk4
epaGMH8YepJ5QNR2LzOhhF0rZ/sdeVTGFOnpFeCpK3Lfz3LsoTJtcn2MLDF+T+OycN8po6dv
PPG+R78GxPi5C0qZzfXRLv5BBRDR9dvv+WVJPzkNI6frfUMCbKTRAI2bFMA/Fp+6Xud/edhy
vedfNoEyIAKtSwDp67cuT1TbXyPQ8uctGp/9tZuFGkIEEAFEABH4gwSQP/uDcFHViAAigAgg
An+NAPJnfw01aggRQAQQAUTgDxJoJX9Gzd4zEEciS/x3tahm8yolc6s5jkTu4nW79Jfm0z/u
G0DGkQx9XzSgSNNQhobO/7JFlAERQAQQAUSggxFoJX8mpOo8xRwHFTdDbxYyMETVb06cyAEg
u3qZkX6FjMEQN3Sbt2DeZGtZvjcKf1UWXUcEEAFEABFABDACreTPgKBgN89SCKrv7r3xjQFQ
9ep0RB6Agut0I9z9pUMUFLriSGQcSVHZfsmJt9VQM67SHuHj1bs7mTj05J3ju3fuDksooANU
CMhfc6+q355dZKZCxpE0zBbF5LHE2LjvYvX7y8tc+3bBGpKXHzhr19NSlmvlzoLSiAAigAgg
Ah2UQGv5M8B3HTbDWgxod0KvfaRVPjsW9QFAbcIEfTE8SWe4367j12LPnFk74MeDIx5zOZLR
RZdif9ov2xjooSVch7eR/AUXrsFIn8WjFL4/CZ3pFvmRR4+zKm2ds8fWG/hxO47HhS3SfXN2
gZP3xSLk0erIohQigAggAh2ZQOvpXeFkrKaO7HTtdHJYdJZqWkw+gPb08ZoijKrq6uzIbXue
5n2vZi+tvXnygWLJYirhEnIgwJaEDddCayEzqA3n7zwhOGCVpXhh90cXPO8/PP+i3E2/thhQ
3l05mwMAWQe83Q7UnH0Q+7rKqS8mfYY+iAAigAggAh2cQKuNzwBwJPPZzjIAacEr158uBDCc
PFZViJobMdn31IMi0y0XEzMuL9MBADqNXrNnpIuqXH3BlkbzA7sct2Ba/dtDdj15687zB9h/
z+5fWIvi39UHhI4RAUQAEeigBFrRnwFImE127Q7w4VbqD8BbTnNUIgKTVk0FAOFOXTsz31yJ
wfRBG/00mv97pM/SjSFbZqx8wABi39H6UlxVCavaj1EHKLy480zym9zXSfFHF88MzqC3av+4
mkNJRAARQAQQgbZFoPXmG7F+ielO8FQ5sCkXQGTg3KFyBACCuvtO7xtuO85PHHh/wNj+qvDq
XaMAhBvLTx4xmBa1JfhZGclkSlDEfz2I8LGuMtHea2LCmYs3HTjg47ofRKTV+tjPUuFal6vL
iVKIACLQwQig0E4d4Ia2PNgkTuDkna2tLYp/xo5/1nLEHeB3hrrQjgj8g/qN7ejuIFP/KAE0
H/dH8aLKEQFEABFABP4SAeTP/hJo1AwigAggAojAHyWA/NkfxYsqRwQQAUQAEfhLBJA/+0ug
UTOIACKACCACf5QA8md/FC+qHBFABBABROAvEUD+7C+BRs0gAogAIoAI/FECzfBnNSLCFpte
U2oFhckslWGl7v0nLo1687NG9eOP2tv8ypllycfCbn6jN78kKoEIIAKIACLQfgg0w58J6JS4
xYSpM0br49LjA6bYjD72HpMC+X9+mPRaKa06KxhlTyLCbmHK/eiDCCACiAAi0HEJtMyfKQxf
uH5/2MWMuKmKUHFt056UysqkxTo4ks6cJ5V1zOgFcX6OqjomWkYmvade/MqoTN7gYmBqptpL
r9eEfak/mUDL2znYfMwid1ODXjL67iFJN1aOtlRW1eztffUrHbCr1kZDprg7ujib9nVZda+4
vmY+lsHEftZk++HOHmeyH/FUTi+I9w9+krnf087UcVlCGbMi6/hka1MVPQMlc/fg1PK2OaSs
Q4dSiAAigAggAk0k0DJ/xm4ERzIe6yQPkJ+cUiRgGMT4ds3/Wu+TT56+Tk1O3jaYjBfRmXkk
+Unyu8yHoRqnF0d9wcpUf8yQWZjw7MXj2V+WuIWpb7uVmxYxMDHgeB5ryEf59lV3eVRUzP2j
A+MXb0/h8pU13aTkf9ZeHnPpwvH/1HvzVJ4vPWz5YlOdmUevPrm8xVoka9ucU1q7Et+lP8s8
oHtiYWhWEzGhbIgAIoAIIAJtnEAr6TcyWQMdHA7EzAPTqFsBT6yLNI3vrDdAZOOsGcQJw+1d
R/RTA+qnRzvmBt98TxfCleQU232hTCCDiJqTk64UTohgpNdNw9xeSRiH07RU+HG7kAZKACIq
9rZqmBS/is1QwqKH32imyryGi6jY2SiLYKxphfUqnyjHuQX0wqQLaa/KZ4+IwgMwq0so5gUA
PTmXUQIRQATaIwFbW9v2aDayuekEmqg7yOsWml49d05m6dOzF74CyJsZyRCYDAqNBkQCAY+r
zSNmsOnWnTG3r8dd2tB/p2XcefMNN1TZngAAIABJREFUfi9Gxt6YpiqUf3qk5QMG5gtxBBG2
B8QTCAQRIg4AhyfimKxrAEwahcbymEwGhX+FDCtOFMPKAJTeWchfea0hwGTgycMOxodYoZho
HCYogQh0AAJIb7YD3MSGutB0semWzTd+ig1aMd1juI7j4Y8gPtRvjrFY5eOlhmJyhgue1s0J
Mis/Z5eQDIdN9NuwuH9panZ5WSleXkNWGGifr55K/9lQH7jPV+dFRz4pYTC+PzkdSzXv27VB
L8yklNevHCcsKVRV9BOb1CTIWjh0urXl7LsqbCBXkpmSV8HdCkojAogAIoAItF8CDXqGJnWp
8vHpsMcg1k3PbunitatHKQlBnRvjVMD4/tR/3JqbxQAMkd5Tdw9VU5cdFT5n+GhlGYlucgpi
nHyNJESVTKtDrI1mfKhWm3k43LjhMjgZ61WjjvJUju9i5dZ74yQLNbLV/rjdS46tmT/TWcWf
SQAhjTE7Y4yV0VCtEfDoEiKACCAC7YZAO4gXQ8vbOcyjZM+1tb3+ejQzl/G2TZy3bTc3HBna
0Qn8g/FiUHyrjv2jbvpzuGXzjR2bIuodIoAIIAKIQPsh0LL5xr/ST6Lygpu361qi50ct8PJP
40xsihksDj04EouFjT6IACKACCAC/y6BduDP6t0cgpzLnksu9U6iQ0QAEUAEEIF/nACab/zH
fwCo+4gAIoAIdBACyJ91kBuJuoEIIAKIwD9OoBn+bEd/HImsv+cdW3SY8fXMQGkyTmf1U+xl
Lt5PdeZKAzKux7SEJr1cxluW54jy6tBU454KOJLJigwK+wq94NZSByOFnnoqw1bH5dMBSs7Z
k3EKnnHf2S9cF0WP7YHrMvpiGU9F6AARQAQQgeYTKLvkLIcjkY1DP2JvsFKy1huTcSS1ifd+
AvBeArZ0LVnBN6Wy9hIr/AhZVMWk35SA6HdVrCdUQybw1sbTEFA+XvZ1Nu1EwuKZCCsamrgf
yKwGjgHsVnDy+v3mRaRXMOufl9bWdwu+8Y1Wr2HBddYEUTH0fYE1IPjTlDyCS/75s83wZ8PH
6wKkRca/x8gwvt05cZ8OSqNddTEdqj/0wZPNp+w7H+Wnw2mjPHHN4qsDjmW/fHrZ/uHsFXcw
L4bv3F0hM/xRKROAWXQ//K1qVwmONskfMgxViwggAojALwh0tpw0f+pYa9n8h1EBo/uO2/2m
5o/yXxSrd5n+9dQMr6CEPPnhM1YumT/DsSfzXVYhl3siD5u9dtF4E+bnh8cWekSwHs+sGsjD
5qxfNstF/XvaRf/h06I/c2vrNlQnXsrIbd6CeZOtZdvnBrtm+DNlR08dgPRTlz7SgFF063gS
HRTHuXa5PL2/DJkVCE2x76gdyd+51e8rk2dokHGaPo8qgZIVpE0iS7jdLgdmedpRj4E9iSQy
Tt546Nrrn7F7I0iYH4hk/X7mGtIiHPdUmXX2PmnimJ7iOJGerhPkkmLSsX2OYgbjzLNPPiph
MgoST38ZNKoXx/3V+2WgQ0QAEUAE/hYB1dGLtwXvvfIg6ZidBFTe91t7u4RJe7vXCkciq6xJ
55/YEmwX9VtaLg1AbZy379oVq3fvP5Vyd5uVRF1exWHTV64J3D1BFgA+vSrg+EzFYdP8lm8I
3zWeDFCdevM1d3sN1ckoTz2+e+fusIQCem2QSy3HJTNNlMk4kqrx4jjWs5rTNKMsZccAOTKu
28gtKeXcD35Ojr+daIY/E1J0noA5tPD4T5Sie2EPaaDoPEFLomsft62HI69FHfDr9T5mzYK9
2RyetX3BEzj+CDv1I8nHxedY/oDg4yePekre3O7udprnT4faYoK+qUXZZSQNshAmXkVSlK3M
/coaFkvojbHKO5VYWHAjsmDoaE3kzgSxQ+cQAUSg9QmkLjLE/jQnKVoc/ia4dqHuI6daigL8
TLn7ltupCM7Nd1ZEbaR9D4CcjUM0iD2M+4zz3Z7wiXs2kFJa8Ontk6uPCwAkLAarcJ5+VYUf
32Y/u3zufiEAkNVksadm7edXddbmA4DiG4+lp2/xG9apPPXwih2siU7WVUbZkx0O9hvviQ/b
m3B6qbFUM1wJV+2tnGzOfn0hZcf/9FeuSj1x7Zn0tUQqqLi69hRhPip5uCtgc2Z+JWs4+/7x
Bwoo8xqJq5MmBoCqnLgr+QAQ7e0Wzc6XHP+mYuJAfmF+3loaPRLTmWD5YWPM+aqiIcGaosmN
5kUXEQFEABFoKgEc9tc4RxmdrZ7O/Qc6qf8Ed30pPFA/3wo/m8U9qcfVAnvpDIcDHFFtVgJ1
OhPHHYKEnbGhhnCSA7YmPO0bHhpz8/b9R8lXw5KvXn17PWl3n5r6M9bZKq/D0lozjoU6kvFQ
s3fg5ebhWptZeYR0vYO8enLLKzVUp0lNnVxf0hM2r5zRj9b9TED8rfyX3yigy774+eDCYJAc
cvhWmJcqd9VcRf9+sllOVUjJfrIewPO9ywMSKaD8n6sm/nXotI1xGfJzYu/difVSAGBQayTx
2V1huTI6lQFA/1FYztU9Yl//u/fvPH+A/fdwo4kE9ouh02h0ntJc+WuSQjIanUrfFGJbUuil
HwpEVeRZQWIAJ9p7jOWr1f6fh43UYp/hL4vOIAKIACLQPALETnJSAFD4tgibd6IU5hQDgFQ3
qbqBgJrLku1bNu3Ysm7xABnBddM+xR6+VwUgYWSpJlLzoKPVf9I13BCTUvxd1NDFOyTiYkb2
y3N2YgBf7qbWraApT95+YuskHTy8PrAsCIuPXPNRnBRw6lj4xdibeXkJ2wfL8CyI/arO2joA
QJwsScACoBAxX8FtdWcpgB/3ImKzfnCa5Cr2/0nW3ZamtE/sMdJNb+Gy9FuvAVRcxmsKM99U
0wCIktLSzJyj1z8D8DpqooymLEDGzcMnTipciPwCIA4gqu5gL7f34MPQow/kHElfH108+9Lp
RIwS4fFSE4vDMPvm0xDThvWGxbRd+35fePbV3GWa786d+NpnuZ4YfGVZLqozNWC1ooiTujB8
aEpXUB5EABFABH5FQKz3GBvpyHMfD8ycSBsm9+7C8e8ACvYumiIA3HN+gqt5dz548Uvq67sX
rryqBLH+m9cO6oKjvT0wRH15prL37Vfr9DhzgwANN0TN2mNvs09y0DATjW6Ej1duVwJ0MdCV
JkLNipV0b+txXuOMq1J7rUnfsvDo5JuT2NaQjYa6OvXgcWMcM6nvGqjzOyfLrxI9Jodvpvi4
h6wePkr4SsxMnTaxCa9Z4zMAopLDRCNWR9XHOGuLgEhPrwBPXZH7fpZjD5Vpk+sjEFJyWzfd
SOJD6NLAZOX+NYE1Jc0DzwV5GpeF+04ZPX3jifc9+qmLc4/fuSqh5YW7yKvarMnI2jxYU37k
sVya1MD1Qba3J6pqGtpfNt+zeWBnTklhRadZU+0UuCeJuWpCSUQAEUAEmk0A18U64Nq2if3k
P0UfDNl/vUTN0is8ZpV506JyfL8XsfPQqRtfZPuM8j3/8PQ8Td4/93mMabghAtlq/IieP56e
O7xny76YDEk917XhwX0leUqDsLbX5hlyAM8Dl14p+vV4qUl18rbAd0SQtdlxOXRSt583lg0f
E/qao0DIl/EvnmgH+vp/kUb9ppqu61y/JDpGBP5PBJC+/v8JPGr2TxFo+nO4meOzP2UwqhcR
QAQQAUQAEWgRAeTPWoQPFUYEEAFEABFoIwSQP2sjNwKZgQggAogAItAiAsiftQgfKowIIAKI
ACLQRgggf9ZGbgQyAxFABBABRKBFBJA/axE+VBgRQAQQAUSgjRBA/qyN3AhkBiKACLQqAWZ5
WuiEfpqscCo95PqMW/f8N8QTf2VRTfAUliA7SVbaYnLw07KGlXmrX50IWLbp6OPShrNwN8go
vuSpjtNe8rACk9z6/e4wis6PV8LprX7c2DtiHSI4F/Jn3L8flEYEEIEOQoCSvWfq0sgMUbtp
i1bOHz+wS/4rlk7en+mdlPVMX18nlZKXF33mRuSwQ0QKaKk662TA1oCjyY24PK5S1Lwzq6NL
tby8TMQBWtIdvMzQuc7kD6FrrhY07Eg7RHAu5M+4fj8oiQggAh2FADU/7TOA3JAFS5ds2BB0
Jv52pI0U0L9F8ce3qkpfqkfGyTvM8LSUIMl2c94eF73KQpmM62rhGfWJxo5O3HXo1MkDpUhk
UaNpB7P4x3lyNl4LA3assgKAb9lY7EwBDVUmLbZwvgcA6XP15FlRtARGzuLwp767cDwVlF0d
WXK/Arsj0Dba1wtL7eVlsCGjiGp/95ivdABJQ9chnaqvH779DXNoHTc4V4P6jS7jbTlg/9nE
9evX/9m+o44jAu2agJi2y6BOkbER9hoRXdQt7F2nr/YeoS1KxOJbOWgoS5bdDpi/ec0CM4fb
fkqsflY+jqfP9jDP25ewyTHJZPq00YU7z4evPrTAdix2uTo9Q2V3RNC1OT5RM2aZ216bqsrz
6KR+//ox7eWtbABRfUs1YQAcf0M3Z3psXnx7anB2N/etaxxUtLUorMhZ+FE7jo/pfH/jlO3u
bppPr09UqFFcZJalXMsCMbsBSiyVLIHdYWfltc16f/WK/cmMUVtj3bqVvEx9L8Eas4hp2qjD
qefXMivHyHPFTmvsDrOCcw2pC84VXRec69KRxEKjisiCoQs1k2PuN1bJX77Gc1M4baPnOAcF
SiACiEB7JICXHX3oTrzlwSOxN6/de3Ry66NrH6Jz9ujQ+eNbsf0ZYUDQznWD76buS3rY3WPL
jpXigZfPr/n0toAdCVrYaoW3y3Ax3ef7otY+u/Li51RVEjeUvKARfYIAQHpEZIhTNwIAncnX
EN3PZvAAeQjOlunj6DxOkVj1fLWgyFkKmJ4/AFCL3xYwgdRdmv2MFtidHSxFf17bMojuymKQ
EReysczEuI+Nh5E05vUIkgpkIUj9+KWCCRJiHTY4F5pv5P5VojQigAh0EAKMquIqOdsZG05d
fpCfsl4PoDDl2YfMhuNbiZNlRHAEYSE8QGeFzkQgYCkmg8kW96VTqulMYNAqBa+NyY7337lp
pBwUX/QNelzKBMovAmnVMeaPnFVzDS8sLgRAraSwDRDUna9sX8trG05mxKk7J3bPG6KJe3nM
f66VZ8wXbI6RXl1FA5ywKJEdzq2DBucSPD6ro41SiAAigAi0QwLVaSv6j0/UsrXW6wavYtIB
JDV7ycDDxuJbNdJLeuIS38Acubsh7wFn4qBff8qOpDdkzPKJPV7fdwkPXRk6J34OXWAgLbx4
FzGAvAsRkdIWA5zMBEbOqhXOJ8roaUlCRva7coalOB4EdUeWPd/Ia5te5Z3gY5ndTW3+69np
9Z1XycWFlQwA2tcXn5nQ3VAVC8ZV2WGDcwn2Z7a2aPGskd/271z6o1O46H79zi1ptMwfvV+N
towutg4Boe52rv2enI0/eKucBmIqA+fsDBgo31UnwPOG11E/y7F9x+qR4X1NKOdftyhmYYeP
2xiSTlF13rdvIu/iWU1pHKnfKl/D8GXP/IMeTNnlJaghCdOZU0xvh1zfuvC6QdD7BI/Ac0GU
BQHhvlNCQby7gc1cnshZEkZj+otH37+QVj5JjgSCutMF9wZru55twg+Kko5uC/lUzgQxpUEr
/ccoE4H+OflqDshNdtTmCrnG22taXvg4c7+k/B9VMFgz1HzDo/PuWHCuSRNVQykiqi57IwZ2
xtWGZGYF58KKN5kfb1t/7AjFi/ljaLkqbnq8A65CzUja2tpGnUJbV5pBrPGsf/p+Nd56C6+i
eDEtBFiveHXmyj5Wm4pG3co6ZF1/WFYva2sf/ng43WhEZJ/jucftZDiBHrkbaapttNzD9mqL
f6x9dGd1r0ZisHFX3ZbSTf/3KHh81pb6gmxBBBABROBfJCBptmbXUpEHBV+rQAabJ/zdD+PH
p0qz+Zuc5mm3Q2fWrE4jf9YsXCgzIoAI/I+9MwGLqQvj+DvTtMuopkVaKaGksleEhLK0yBqK
kGQJlRCSSIt9l33NElk/ZclOsrcQoqzRQlmqqWm+596ZqVnujJkUlXOfmLuc8573/O6ds9y5
9//+WwRk24U9zg/7O3WmtHAIWO8gvGwxfSM3s56+3Fq4mcZzBD3f2HjOJaoJIoAIIAL/MgHU
n/3LZx/VHRFABBCBxkMA9WeN51yimiACiAAi8C8TQP3Zv3z2Ud0RgYZBwF7kIqwOlcUP9wT0
MTcgU2kkTZOOE7Y+LsoI7kAjaU9K+sGTh1FwY+mwTopUGql5V+fVyYXCVXtB0KYo0XqeUgAk
1Nfnzs0j5E8jUTX6na+Nh+W5JfzZRXRb9pwOABVvYsypNFKXdc8FXyGvmWB/Rc5au14hTzHj
dbWg50Hqimy9tEt/d3bBtMVbk7K/AUg31W7f22dfjHc7yrvNvcynPtH2v54cZSZbC44zhBok
dqA2yqwFt5GJ+kxg3rx5wtwLDw8nOER/umF4l4X3KhTNRvra6fx8kXQ5Mf17D4KElXnHfd0X
JUr3mxlscn/N6pBRPm3uHXJQIRrrE9qc3EGe8Gl6waJwff0bpjrjxnShEpnnz1HJqCRL8SRU
6OY+zlqFDCSF9q24XyUTTMlvi3CbLeG/AJfwZxAmIdrJEuwfuGPx+elnXdR4HKxOzhLs9zrl
5V+9r67XhLgiRrHMkucnQodYtZWl0kjU5mrdRs4+/Ow783uiuzYecIgVEIjzf/fNAjEUyj9e
2+Q1sIuKCp6mhXmXMUuOvS0HKD7jrEGi0ix3vMPw0jNDLWkkakv3Gz/4D1X7yM7CLlfTzGr6
vrSfLJWY6kRoDRi5sd5e0Uk5moO8gwNneA9sw3ydmV8BQFayGDN95vTxvdl6A3WGSpgDv1dg
ZQUDnezfQ9gYc3+/ExZ9rwJaL7nw36HlCyLX7L774KCbCl7TityTQf1VqTRpM68dr+jMghub
En6Avlf0Ar9loaO0oDh+R3IRoQg9oU1V+Ja628O2DQWbBVr2C7nwoQKArXzf33tSHyq7oCKx
9PVZGTX6e43roUQ1mcIfskxrkN+i6LDQ6KVBHrovsblmdcqfBG4A4/OlEGsDGolm6Thnij6V
Ju16oaj6bPNK+Ffv51ljsCZqWDuP/zme/lIzwf4qqyUvto217h2Z8lXEPLgqsUQrNe3PyrP3
jrP0XHc6Xb7vRL95k3pTn11cPbnPoJj3us4z/KdPneM9SA/zQ9FqjM+c6VPneVoqs1WjWd4x
PsRP7TB40c4bH7QGeM4NmD7VoVVx0qH4nN+aitL6Tw2ZPbIj88PtvbM89r1haZtJRKORJy7/
nJpdAdByhF9AyIJF67fEPri+qqciQOW3h/vXr12/KymPgYcNjBnWUZtEba7rvGC2DY1E1Xa5
/B3Y9yJaDwyc0lGPRqIaWM45h31v4efNuX21tNTxa11HzyHwwKsyoRiFOQBQlnMmcGjXZtgX
RkPdekL49Xyu0QzrBsiXYw40EtXI89ZPjjPGg/292regUfrFvnl3YbF7T3U8RkYTi8mHP2K5
y96cDXLrrozZ1NS09Vl3X8woikLdRwcaEoEP9x8UARgMcTVkT/9JFFkZVntXcvvwx86TXPUq
ck4GrX749fOzN5UAqvo0aZBW1VMFoL95/lnwJhsAndDmT1wm/1OPlfsP7vZscmn1uDGHP7Cn
OmUPbii6r/SzIGEFZWh7LJ9jCADNx0VsiV3vwdbXJ8xYev9kUe+QiMDBLXjaTYCXwZ218O9a
t2UvcBerUja77z/Ufy+ftW83A7w23CrUH+U/3vjpfzl8548t4d+OLeHPPsouQrr9vMf4HrKa
ffSebQe3r5xlgb2+1t6mJfYuHC7Yz8AE+/mM/mKz8kfGek+PuE6bTgV0blbT7kdoGTW831jy
OHJZ0g+Q7R9z7tRwTSmonGkztpVHwtWILQWpq6OGAXy/8mrvmZwSbafZiwJbSfMXX5IaNe9E
HpC7hF+5NpV9uTFL8j8y5AG+8ycWe1un/+RgL9V+Xy9Z7cx7/yyPDmrJc4cM2/fk449KAHld
q1HLNy5118vD762pOHr3yT187MFXJYuJG89EOGpRmN9St0/wXHLsJUOn9wS3/K2rU+WcTzw7
0adJ2Zuzi2eHbb3w4itQNMxd5q9aMa2jWDcLxHb8TyWUbTnEQTs6Jiusr2GYkm5na7tRU/ym
9m7Bc7evNDXMfd6xHIqpe4AHLTliLZ9vhRfvqqxbMf9E4PKE7QvWeNhFmpGp7QbNXxdorEb5
+mD7lJCdHtMse8Xb8GVjbwpzoOTJYmfPqFcynbyWTtB6EL30xHyXPNWHJyZrsPKRpUiE93MK
zpz6ERAU5qkgt9FlVNRzaOkcGNpXrfDZe2kmE0pTlzh7RLwy9l6z34n6JHpa5EynUr3HO5xU
a/07RFxXtLf+EiB3X7156dDi5meOL05/lc8Zf+GTfLb8MNZgiylCX5p1jkAm300Nqz7FNmyx
1+Cv9LVrHqa9KlQwE0Nfn5WR3H1dTMhodcFrVb7LCPfuKlIg3cJKReoSAHBSlj5eNO0TAJzw
G3OCRT4l4UWh2ZWrX4BiG7IhaJDCwC/xNuvecZ8VPgl/9iF2EZXFj/ccuFMMQJLX7+us9frA
hKkP6apOW88GmGA3Omsm2F/xfp+Xh4HXwdPTTRQJv9Pc7tVgvWb9GSP/yR2MXVs3G3V8/EBW
t3Yxg4Tb+Q8f5FVY6/3CKqPg4bUPWE8/wclAFpj04sIibGJGklP4rfknvSjv/avX5+/mASh2
66MvByKaWoF2uXUmcTvemJpFUpMeEUn3u+/ZEX/pys07Ked3pZw//+pC8vqO1RdO+bsrp3MA
aKM2R8+xkftEu2ky/l71UQCV0cuDva0qWhyJTLj86elnOlRCWdnLQ6s23M/5Wsa66/fi3lu6
kP5MiAPRSufjXgFojNmwzKer/BfNG2dck27vS/46aQiraBKZ+NJXHLpxa6Q9lf400nQ2gLrn
/i2B3TkyCvSn/x3NAoDMrX5jtrJrcOvU81Kn7grc9UHrjZaAVkdLKjx7ffrEy1mmJtiYjVle
Ws5qYBQ1NRRIpBIZrJ1iVsqot9Elw6uC13nlQM1/lQcgo9NaXRqYFYyKCqBISVVdfjJENum4
TUr38KRoq6b4hUpW0lOENxhYeeVmMgBSFKyRZBI3bsQZFTWbs+KW8Z+eFkP8Qxe0xmU+yjKw
/ow3Jb+1oitYyZx//Lfl+ST82WWxi6h4E3PtwB18ilZZeD10wNTz38yDkje76rCnJ4KC/Tys
+B1nbUtRTbvQnl67nTPJpB3nq0qcsmZ7BQcAktgRbGiqhzfi2MHP/rf/Rhmrt8L+2s57+BPr
17DdzEoWfNYn8ficr4j0JfZ6Fi6hadDae++OgTRyZTnW1C6dOthp+PCQxEIABtbUsjLh7fKo
idM6UQCwdpm7HfcPWR/ViW2b/hpvFplYs+g4PvLyD4BvWLPIV3TD2GTSC7/KmQ/127jvdPrL
p8cGyAN8vP4Q+wWNfyGRpIi7EAVaEykAkhQFu3AqmVCevW98QOytgk4rTl9LPxvUDgtMIfzn
LPEdYDvEusAYdAYTGD/y+KfuygYaPD+JE1x8NLeDl68+voX9Pbp5MqQDd3r+SqPtRkWgSbeF
/p0okLmo74ARc0P9Z3p26eh+rJCgiiRV6yn2CpC9K2D5mgWLDueC0uAJXaiYCL25vIb5zPtc
N9SIbJ5RdnDQgIrbO3bfyspKu3kg3G9+MtaMES3V+vqHLmdXtnQUOyORMd59cq0IrMnp97FV
AcbVkGmRG+bP3cl/v5El4V+ASfjzGuPZYrw/MnbElufQYpirVsbpo7HXPmCNKJ1PsF+AFY8N
zgapSUe/fbvaH3GafDCLMy/mHKuNz5r1Z1I0s67q2OA3/i7r0dbKvNvxqQCg3rmz+i8mZ9hU
VdWipxYApO48lU0HBatlR3dP0OHUhtJUAwtol/+qAKeWn4VdgkrNlX5tVm/86gMRY9uR4fnW
oOiHP+iimlr+dpldurB2vHE0i+WvNzgYtegzxjMgZN78oKVXSgCUO5iw4wWyCEhr9xqsB5AX
Oy1o7arQmXN5JmecU8T1yawow+7iyzRVb8Z88V98BtchglUhDijqO7i1BPi033fehvURgXOS
ykG6+9iuzUjSKkZaFICXh3Yc3rc+OPQJgUmscIOBww0BPu91nxy+Yff2pfOWHPtQIWPgMKwV
QP7ptUdSXmQ/T07YPWfKynRGza534nLR3vpNQKbNtCPJaz17qb8+smXdyti7jI72JoSCwmR1
t037F/elXlsTtuahxqCFB7c6CLsrTWRTvVvUsWhPy+I9ARNcJ4cdeKNtxSOTzw0J19dX+nYh
YtbokCsFCl3FzshtRMh6EyJrSlZRMb7dlbMPRcRktBmAP9PAnR2X8If0k6kc4Xzug5x1+sd7
97HXG97HLpoxznvqqBXYFiMfF+y3Fy3YP1TTwG5xeubyPkaaQ/Ziv91jN0ipPYIPbWi+bdCM
eOz5v9pdft1LEJYn3yFgfs89ftdOjx/oOtHJFDKOxJz/DooOi2Z2FmcWKd8+YLnLfs8TyUG9
Ot0Y6di2acHTL5xy5NsPs1M5dOzd1inuFf01Xp/c/xVAy2GokSzALzp0lfa9R3iNsCx92HZx
2opZu8dsoVc3tbG/aGrxdjz0aU7stCA9d+XbEZx2HG8WI8OzTq890i2gJ7Uw89bh41/9/4up
6n45bjeETylaz5GDk2KvHNt+/kclUGimbkHLV3ZvAvC12nu59sEHlmd5LInbvSy3h4drG9jy
TFZRhniyhvUlrcat9bs4Zs1xd9ubPYZbG8Cz19W2BNaEOSDVPiR+V4Vf6NZdITOArGoyeNmK
KC8dCoDqwOWLB44IObvVf36vcQNbwQ7sFqLAImey6OR+pn/Y1rMrp58GhZYuO6eTQK794vg9
zDnLtm71d9sCsiotuzj46Dd2OVYBNP/2DnJTS8/oJE8scHTV0qFKjFFx0qOiSez9tJ4hcfdD
qhJhK/JdV2YwV/LswjaIbILLqDbMAAAgAElEQVSZ564kz108ablUH7kLslmS8m5JdULRGavT
AUhp+1zP9+Hewy/eSGpKYA3U+y65lY2VWP56s+WOOG4DACRV22nu6gmHdt0usBugylsERbea
T24RD0OAiuxze5PBKMTbHB8hELKi6HnE5XrwFDjzEnb/E0C1f+SVpzxHammjhv0ZSLf03H9f
KTJwVey5ratOYs5ojN4cHzMKa4TEWKS0XDY+orYPWrH75JldEWfIimr6Vi7jx49pJQskhd6R
iatkZ6w8fmLbRgDFljZei1ct7Crurx4yxl7LvTcN2fo4Kvh54hq/i2PFbGqFteONqVmUUu01
e3Ov2YLnh/urUllWLNXdb4uXruLPpyfmBwEo9RzWVh6kFLm+TrIORz9U3Yvvt+Ts56pv6JZt
LOvWfN891l6hDoCs3uCoE4Oj+F0jNWnvcyaj6lsctZ2dQIHLGWyXjPaAZbEDlvFml9UdGH50
INGbSbzp0BYi8M8SqJmEf70V7K+N+Gf01/snWPqelx224/4WpxbidWj17/qpzL+5a0+Wejt2
O37oudLg+Np6HE78+D0141Kb8c8Yuaf97KcdSfvKAGhiYOUSuDxkskXDfJ6zZjABoK7PV40d
Eydjo4x/Zm9vL/p9ahT/T5xro4GmEf/7WBu9j4yB+9arUptjn2ffyikdxvPWegPix6wofLR7
YVU7Pnbz8pDBwu6iN6BqSeyqlObg9amD10ucD2VABBABRODvEqiN/gyApGg2yt/s79bkd0tH
7fjvEkT5EQFEABH4mwTQ815/kz4qGxFABBABRKC2CKD+rLZIIjuIACJQvwgIauHXgr7+t8f7
59l3NJSi0kjNdLWsxyw4n0vwBiemt0as5c+LqDxzjTWJSjPb8Jr17Hpl7hFbFRqp3aL7gu+4
imWQ1zzxFv1ZzETLNlokascF6ewXcokTNri9qD9rcKcMOYwIIAJiEMC18GfsSvpsMMJ3VsDI
zuR7ien8r+TjZtj6+l9tZgbPsvx0MmSUT4KwiDH0ZxuHd/aNufhey3my3/ypLp0gJfbyB+LX
qCi0nhN8Z/k66gro/XE5L91y0EgTgNRDCbjgbOXnqwduMkDX1Q0XleJKWJurLOX7uPntGp28
AOrPavM6qV+2mN9Sd4y2MsLVS7U1uoxY8lhwyFdTj8UcKvIEbVJT6TZ+5f1i4VIENY4ORTDe
ZORdnutoodXGVL//onOfGAC4nLGW57mv+IsGzIITw7VJyq6nayOGVE0honx1SYBQC/+39fWX
RqWUg/GSS4lxUcHLlq89deNJsn8bWcbnuMnWqjRcfl6nu8saXDm+Iv/azo2rN5578wOfqKlz
a+1Xz4qk9QZ6tgNIiz3zrgIqCy7vT2aAzgg35bOCBqtolaR4G9JIRv53SoCeGW1MpSmOufIN
mET6+iXJc9qRqO1873GpnACFZmbV1VBFVuhrpVUlNbQVCfoz7mhvPO2Ubgtr97lxL35UvZHE
D4FZdGeZTbv2BlZTTuYLb834c6Ht3yNAf7lh4txD6XIDJs0OnjHSVvnTs3ziceTvFSNObqXe
UwICnPS/PD3tP22fQOSgKgt4dKjI3SkiuryqtDwrguPNb9cWzznfY+/Lp/fPOtyeuuAq1ouR
m7XQythzp4gJwCy4ueeVgXqdSKLyeIY2/hoBQi18Vnv3u/r6g10N5YBR+rWgIK/gO8iQmSSK
epcxEdsPJcZtnd/2TfzimZteVvdYbAI8Wvu4sB/rgLSO82isQ9uT8J5ecGPX7QrQcR7dWvHX
Bsm8mnTfhcv8/7Vz8McLlqA/I/BNodvoid6uZqS0hMgJdq573whpL0vTD8ZTliS9urXFiVZV
IJOBolYRIK29XeWfUj8AaPSdOTdw6dLoIwlXDtkpAeFAsjRtrimNpOno7WmjSFVr7rz63ImF
3fRoJPVunnHvK1hTMfV+E8fbKlFpchaTtmVyz/MIR4V8tdCw85oVuWZhTwD4/PJzBRC5USJW
dCjCqFSC482SzKM3qe7D2iiQZNu4jdZIjk/DhqfyHUZ0fXnwzhdmZd61wx97ubRtdLdb+Lg3
qs1w4Yuk9cT19ZcGTzDBdPVE6usXpK7vJKB4hKvJlr/eZtUSU51Vs9vwvIzJ+HJ7XeAEh6He
y5PLAN7c5QjFVruGa+17eroa8xQKANJ6A0eZATw8kPjoysFr5aDv5tZGVgyDvOq5bJn/jyf8
xoz23JxRCeUpCS9+sqIEENai2rNGtFbVvdSoTlqDZoVu2XU6/dxEHfiZuGzDgxLB6S3jw0l/
72Ovb4W69Zh8OKc0Z23vjg4+4x0GOXsceVucuX987076ph10u45b+fAbEyq/3Iq0M2mj27H3
wBlebXoLRgGtkZv/ZiZ546G9msKnfQ6GmiqWg9yXn8r8yQQRA8mSuwmMPh5d5XKTlg2cereD
h2urspd7FsWkslTGytLS9Wfsix6q+uqEt8/+1+z4TgBijQrLv+a+S71++SWAnJlNSxkgcgOM
xI8O9csTWl7wsphqSMN+uJCi6qiVZOfitVA0HdYzJ/Zaft7FQ3n9XI1Qd/ZLkPUlwQWRC6GX
uBY+YPr6bJ08ZnkpSwsfWPr60jz6+oDr69O59fUrGRUVDLYuOl4ES18fXp2OzyqTauGy40Cg
Ob6//MWOSWHn0jV9T924espLC6CynDsbyz3hWvvSug7jTQEeb5oXeY0OeqPcjMjPRRvEuzIG
Fi2A8T2fW3uR0j38+k22APftsI6KmLA7fy0IaTWSnb/Xn7EgkKiWw500AT6lPCioaueq+Ehp
OUVtctLrteLUjW0jsEgy9E8fjOfFnzm53/XnOt/Y1uuuvU57lLHV5MCsHZnf0pbPiGu/NTn7
3sn51EciAkNWWUcrQgmQ1VxjriZE+oywaQ1Zdw5GTLCZc6OYKXzcJ9Ujeu2SMF/sG9rCY8Wa
4DnjDAEKXuWxHt6S6bnAb6izx6zJrQAe/fcE0yfFFvprPPgT/6iQfZTzkRM9uIvZuP0fVAbv
2ujUXAqAwA2GCh4dCkC1y0DnEQPaK2QTWsajUtV4vCnfbrTN213xx/cU9B2BujPO6Wmcn0Ra
+LWkr/9soV3/EYv3nL3xKBdnx2SUVQBQmqioMLPOXsBCYUm2ULSHjDEFeHv5OQP0h440kvmF
QYqqkRrA50vbDxwMDzn0ES+MUF8fCKMESOZcg0pdG/0ZFt0F/+2MRBJneiurP8BOTxZTaE4+
mfpsz9TBnW379ppx+kvp208f792AvmM6Usmkpp1GuBgj9djfuZYqSwtLNey9l8aevfXpQagp
QP6DR28zhI/7FGiqsiQpGWkyQDOtZhSQwtaYlewgLAx6GYMJlRUlRPeUBUeFvI6rjQxfu2yI
BhSeDoi+W8QE+i+Gn9W5BS2LNd6UVjVsWvQC/72QUfQ2T05fkxW0lCTXfpjNs0XhH/oPac0T
xrS6RLTWWAgQaeHXmr5+9rGta5btTJHv7DQv0LGlqVekp4nszfk2w2OKjWmSA6ToOrpb4Nla
DXM2lgXZNiINSuuOWTLZQvHtjrlRKXrW7Ki3hPr6xK5U5OwhUr4nTtyg9taGPgiz6P7Rk7kA
mp0tVKWYlXS+IHj8PEgUeQr+YA2zkkzrvy1hY0+O1jDj7U7+xGi7xgTKUhdYj7zW2r63aXN4
Fp8G0MSorSrcrhpI7sYGkmIPGRjXAgOisjSub3wDpI6OZoqQgjsmY+DooLFpGxb8SWMgNffO
6aNPnQ7E6zbh9Zpq2nfYPHft5zeH7tkRvMM3wZdrPMvlRnV0KJVuPZw6E1qWuju3Y7ftMPXS
/Y2CP2xUlSpv7Nb966yjz6YFGb0+diC3yzxTeWANpeXaTYxcpCPr1EoG3lYlRyuNkwCRFn6d
6OsDDFt7dRgnmPtBNs1qif3ehKL+XNApepMeVIn9Y4GttUQbBPvlDz4sZxvYwDFEpK9PFCWA
QPmeY6KBf/7e/Oz9qegFkz0GtRu4/R0o9JvvaylPFARPCCIptW6OTS+vOPoae7qg4kvGg5wy
WqcecGn//a+VlcX3jsQ/F3hESIgltJuIgHSLAW5WCpkJ29at35SYr2/reyDSVrOtyHEfkRn2
PvluA8jnwjbephs4b97sboBHJccOiT0qJFGtFgaYAzwJj75VYkzoRo2jQwmON5VsQ6Ptr7gb
GJk7nO26Yblts6pHk2V0nHwmDtAS9U6QCAzoECKACNRfAhLo6zPebe5lPvWJYVjKtQWtPuPr
rHrJNze1HTcnZJGLoQKpJHmO4PD553WfHksHJSUObAoVOWv7e3zZkBjSFpsZlLyInTEl/PR7
phRIGw5bGx9qBbejhnrteCajZW5r+Dq145lEn1aNoOURXx+6ZldKberrC3hQlhHcpeeyApfL
mTG9CW/XCORo8Dvq+nzVKaBGqa8vmlidXv+ii0ZH/wAB8b+PEtxv5In2xh0xi7tChIHdFHps
vp/ISkXR44R0w7bljUbGXBrJnR+s5l5+OheLPvdyndVkniNoAxFABBABRAAREEpAgv5MqA10
oFET4A+D26griyqHCCACDZdAve3PpA1npFxuuFyR54gAIoAIIAJ/lsDvPQ/yZ31FpSECiAAi
ID6BBqCv/z3RXRtXWMW1H6ms/3uuySaW7Be/6gIpcf3S1v43cEXm8pfrLLsurUU9V6w4xsft
A2wCnpRVrwg4IWJH+ct1nftszhKRQpxD9XZ+Jo7zKA0igAggAkII4Pr6C+9VKJqN9LXT+fki
6XJi+vceBInZ+vrS/WYGm9xfszpklE+be4ccVIjG+ri+fnBKuXw718mebaTzUq+ej738IXiA
JkFDiuvr//xpLlJfX6al8wx/g+/lH69sOpZRrmbvO9JITlq3C5WocALXJdlFVlAsPx1yYlbC
2BZiZGMyGCDFqxApRi48iZTq4JWb+xqI/S6QuHbFSFcH2MQoFSX5AwSuTW5GpWkFPCgBKEtb
akClkdrOTykBYKk1ak24wK2TUxN/mMUpUX1aq2Ojy+51pEzG+Hx5eX8LY/XW7TSMOvZcnPyt
agxYE4dRnn+JQMPQ15cxHBYYFRYa7mutBgCtRy8NCwlon9hHX73bzrcVAD9uzVSj0lqGppcR
y6gSqqcKig6yzju19+yhn9ZtxVoE9lJZdG+DU2cTrTbt9AcsPP2xAnv+vEqPMDZ5dZ+uw2aP
69ShrarZuI3JF4NdbfQMjNr7nc/FZKBKUpYO7dCps0Fb07ajNz/kVqNnFJye47PxJb3i/bEx
dr3MrXuZd7eQo3YNfVb2U7jAofO6x9+EKtpz/P3lpwT9Gbe+vgi7YkYS+XW8uy/HHNRJNL2m
LfSbtjDutvIZW4VNRNHoEDeB1n3aAXy8df9TRWXB45vZAPDhdko+g1H46MpbAOPebTmvsXNn
kmS95GHMlqRPTZ2iYq9tdWlBMEDlNlbJqEFkhZL7C6cfb7v+bu7zjNy0c+ucdWXwoZ+v4d8Y
+nHXBq3XfwINRV+fnyRZva/vMGVIjjn5qvzno8MJ+dB64kgjtpoNn4zqV8k09eVNvObrnwk5
+5ktS1iWvmzKLs0V1949vRff99bUwEsFTC49whHNyWXv0lVnJT16cnfqx8Axu1qtupydus/2
WuT+nHIA2XZTdqbcS3mdcXuH4eE5cR8FpQ4pLdz2X7ry6GbCgdHa2oP9x+u+XiUocDj9aNvN
d7JTTgY1eZjFrXPOj0W87V+0QuIZqatUZGXHQ/fO2ivx2v+NiTCvoYa0ZW9vL6m7yu1768Ht
l0lpP0YpXHoO2tYG7x9cePZjDCUpA0DHugMNPsdNdpl8PLOwHKCpkfOcdbtmdKSfHKnredls
9cPbE3TK7s01tNtB9rnwYoV5ReqeadNWHHiUz5DXtZ8SsTvY9kuUba/DRQBwMmDk+QGxWfPP
zZseceBxQaWctu34JbuWOBkA/uJabscJ/X8eOZk/8vQ+lakDIvO7TB5QvP9EZtPe83d4FIb6
bU4uMfTYHLd9qMp9wTcXK4rffVfsq6WAjbpkNcwtsHv0p+f4ZEZeimqXu9beNdG0o9TbDzlv
yYPX7wu1alqaecB3ypqkvPJKxQ4zt2ycbaFU9Ra1pPBANPALFy5IbBFl+A0Cok+HpIZxff2h
xc3PHF+cLlpfPwLIlCrtAE4xVfr6HUOfAoBhUMaN8Zi+fuTyjE8leLOO6+vrcdKzPnF9/cFf
6WvXPEzDCxU2niQ17TprrPb+dbv3PrIo/C8fzGaNbCkDrO4Cl1EdJG/yeHNcyKP/7qW/+e8T
AJzwG3OCVQimqe9u2zUqtZzQcykNp3mDQn13pMVghVfmpVxj9FljpUomgenwkVoHL78sbQMc
PULMoGxLJycTJZK0lIVpc8OuDroyJJKRjdb3K/kV0JKZf2fNtJWX3jCkSV+yCgd8pLtr8VaY
tcX8ejNs1IF2W/8bqvVl38nUZ9+mDo7DhPTKvtC7fvp47zrYrevcjEyGzqOcWt8iMiDRvt/q
zxif43z4GsTOzVjFV3w8PsfO5dDj0pYu62LXTzaW/cbfINpz1Z7wLWzeelTkrLV3Pd/GDN4W
qrqv32R5bSZPy6X49Va026SdL+Sat7dumZXa6ewZ2132c5ofPu2rQ6FnRnfzUTyaMKX5K972
rn3hOoE2seTp/qlTVl4ukJJWMJ51YPekkuWdZqqdSPQ1koaSR4s6zW5+MsHH8K+84j1v3jxe
JNVb4eHh1RucNVldW3PF5SfTLj97SX30TW+Q+/DEW7E3nj+jPPoOcr176smRGFiMJUdDvSbF
VyJnLF88s7PjlXm24/vJXz69//J7jxG5R85+BN257u3kvyd7D/XfS3ZZs39Ys5thE1aPG2OU
EueyJDhhfNhDqvOSsHHm5YvdAvflGXosCdC9GbV0s5eLpsldH9yT0vsni6aGRBgYaUndxO5S
3E1gTPXomrM5adnA5I6TJ7nmrz2+Z1HMzIHYS4f8i2JHf/dKx+6dYnv17NXHaeJYO84wFU9Y
nv+57dyb61uV3fDrtDxh2lGz7fjob2d7+R+PInv67RiY6NemxhO5LFd2C8HvE0Cr4y6CO9Ge
uiYg6RnB9fWfYfr6s0xNsOkNs7wUU6QHYOvrl/Do67/C9fWp3Pr6FQw+6T6Wvv4zTF/fb76B
y44DpVPdIx8BsPT1X3XwPx03mLFr1JAd+RLp6wuQk2vvOdls3aJNQaHMT6TuCwZhMu6s/oxI
RpXSPTwp2qopPnYjK+lxNPWBIiVFFhjQKXTwDlAbsuTCwEoQbMXwjrpKjxAASFKyrN6cLCUl
JYvJFJLIFBITCx5QdHXW/CdDTl2cZCD96fAQm1uCAQWwajE+npwy/f7IvXF2ymTGDwKBQ5KU
DEv9kETG7QuwkGyHBPcbBQ2LCj5y53z5gAXTrGVY4UUknBezi6r8cm6MuYqeoYpR/9AM+u8K
89Mz+We7dAC8TTwWf+bG2pZHlyd8LnkaOWEVw//867T7Wdc3jtamyLUZM6by6P4XdIAf93Ym
qHkMMRC8DATJ1Is9Cu3sWgN8uJJ0NTFH3qKvTT9LpbdXr15MygEw7NdGkUjknk5S7u7Trwnc
P3j+VdrB07nQauRYY1mi0EpZlDY9e+nJAVA79Hd2UL6d+Blk7EJW+01cGDHDBODxyTt5rLaD
3H1dTMicKeOHaOPghKr4Ewnnk5V7L7+Se3trQD+dvKNTzB3XZXDfdJbV62erIwOgoGdGK8rO
y+WXt2ZHBqgX5wI58ccJNCB9fQE20vqu/j2kv9y7/1Xa2rc/FpGCveAyqpGh8zAZVXPHTiaO
DhpQgamnZmWl3TwQ7jc/+ecvNPWlWgyb1ydt5eGsciCrdbaVurzrVkEl82fqkdgPJr0NxQ6h
xKR/KyJrGqrJQMWH87FpnHgbHD9Zn6XP108MK/XfFmiKxZAjFjgk30x4XQZAz76cwAnsw2tE
oq3fmp+xon4QzrIpvSKjA1wUHL+esV0ubF7shv0Cii94WyY4QSYrO+7n3G+syFnLmQizhPn5
5q03oO96TJgfMGH+6xzDXJ+MPKy9486FtXecNlGK1SZ+/JFQ0md1X/xpJVllVSy7/ihPpUH7
M+bOLdh03WBKMNe1xWW8Xq5K0SysdOHhw63bKAzDdW1pbfsYk+K2rSMBaHbrokZhidzzDypJ
zawnDGh28timDRs/fYB2S1xbc251CA4Dxaq1omZzRa5RE7+KP6NKxR8XzhccVEpRW3Zza9lt
6NAOeZbhCR9due4+k7G8AEAmY0PGSv7Rn1juoUR/mAAJnwTgMTl+/+d/kb7j+vpNQ+esPnZk
SyrIqVs4zjBRhAzBPGR1t037F3vPilgTlihvMGjhuq0OqmSofmqCK0e1zWNb14CsskFnp3mT
HFuaNov0vOi1e77N8O7DTWnwppgrS41WpTQGzRzY9Hp8eZ+J/TW4vj5sGdU0toxqM9moY9H0
mZF7AibsAIUWHeymtVIQmJLxO6DUeZq/8e5pnwFkTeZv8RzrbaXxFeQNh23cbadCes+fWsg2
SbX3QpfdvoNc9VQVm2toCcQ8xbL9fLx5xY38Jl/GdNoIIGs0Y9emwL2LZ0xx1g/nCBxaWM1b
1X+kl+OF5mpUZXWNGt9NqXLyd/oz4gaxyjRrheuaFWgQ31SlFdKWVR3HV6omwmIJ85PIJPYz
CEwGHpRPIBdU5DwA3jaRy1tO2RSdgRP0huw+1+7TvfYTNqpxXVucFPX2U06/h4X8xjeFnyq0
nDuryqh0sNZlprxmgoxJT0M54I6xxCVyD007e7ioHtu1+zSAaZCzvjSAdCtCqfvq+/9yrRwG
qG+KuRjitzJH+/a6dIAOTt3UyBLpSZcQCOeXZZ9KLOjSv6OmTOW3lw9eMTU8laS+CMFNVu/m
2DRyxdHXXTwM5Cq+ZDwp1rfQ+/WXW4g1tLvOCbA6NiY7HlGdFNdw9PXlLcPfF1X9aMAoTL9z
8earH6A8yqenKncHRWnutiZmY0w1rabiauoru51NdWPlo+j5XsrzZa13mn7q/vRqc8ClR8il
TajQOTrzDCuVstvpFNyOfK+QU+lcOQFg4vkb+I7mnJXVuUWreZMIChwGJtwK5E3zG1uSN8/v
T0Uv8gta4BcUsv5hUVXwEf4odhVXAgOiokLnr88RMS+u8lsCVX6h81Y+YX6KiqFy4aO3pQD0
t9cvvyoDKay945Hz/ynQe5HVuw1QuLzxYm45ALO0IK8Eu2VGVuvta5LkPTe9x2QrFe5rq8r9
eruiaNzPCHNO1rRnK3mQ1bO2xAWFW/duq0QSHmNJ0XySszqWraOnszY+4PmliH6TbtHHIsaY
Fe4LXbD8qmzPKdtP+NTGM4jM0uwTQV2NjdRaGht43uwdHTmI58vNy12mbeDexS32Ouu3MWth
2tfnxFvue5O8SdFWvSFA4iz1xqN64MiP64HOI1Y/bz0mKrwH63exeuBUg3BB8vlZyd3D2+/i
dTNbfi7c88Zkwlm2fLd+pLNLN6SVscKL1GheLBSgLNZy8c9b17kM9eqijQnzm7eUxXqhIQtc
d05ztGnRvLm2spoMAN7e8eRqr8NfhEybgO2zfLztdQOlZJuY+B/aNc1QBkjNbMZ1pSTTpnTk
C+vFn7vebUvpTL2eP7XKLaXexz7kV20JibGEyUR3X5XBXFWdEIBEOAy025NTNSRo2sFr33Wv
fdyZoDr+E7ZbzjQiLT+ClcDhOAN7NBJb5qXks59zWZnBXMneyf6QazNj54UZvPs4Q7/qgaRU
C88brHGhoLw1b160VX8J/IHpWv2tPJ9nTZ3O5lV9s9jHkIwqHyTCTQnixRDmr387cWF+6diE
Wgw0U/poaT9P6W3JQW1qGNNY/HgHwnja29uLfr4xLhY9QS4MnsT7h460F/00XX1+Xr+ex4up
+v1M9Fnhuw9pb/+LM4Kuf9E8G/RR8dtPyednDRqM5M6XPV0xdNTqwr67TrWuYWcmeZkoByLw
rxNA07V//QqoUf0bX39Wy8L8sm2DzjwKqhFblKnREhBzkvG36l/P3RMfS1VF+vbtK34ulPKf
JSD58yD/LCpUcUSAQ4BZjxfWo/D11kEOQrE+q2ohVmqBRHWhrw9QkRNjiQvhGy7jeR9SoPiy
Zwcig5btvltUA6k3AWNi7mAWxo82xTQCNdVIVJqcFiYW2GPd1TUOFs5xn7B3shmfj47t2HPr
63Lc4Lervp1mXjjgoEHSMtZoZaTc1mH6qffYofLX64VkEdORv5MM9Wd/hzsqFRFABIQR+M1u
jG0W19efsSvps8EI31kBIzuT7yWm49FS+Itl6+t/tZkZPMvy08mQUT4JhcK7oIo35w48xE1k
HYnPFPUQbVnmwciIyN0pxcKN8bvy29skFeeDacXvswtuh1rqe17Jyi5+n3l9hu2U6DFvl4Qm
FFYUJi0Nyhm10YMlC1GSfuZZ68HGsuRmjnvufcrKfL5a/1hABPZOtrTBJOIsv+1hnRpA/Vmd
4v2bxtn60VVxlTT6nf/t1zz/Qn3oz2ImWrbRIlE7LkjHX2iryFlr1yvkqUQvt/0Fv1GREhOo
nW6MU2xd6OsDQMW7U/vTQK67n6MKZMcdfolfh2zx+/7ek/pQqTRpM68dr4qS53Rzxh67TZtm
qkky8r9TQqSFT5CRDoQ7GZ/jJlur0vCvs053lzUpX7FeUpiUPgcC51POxGeT0yO/+etnBd53
WeXTnqUDUvbq7H1NF/Oqx7bJtE72rco+FOLB14izcAzW008J+jOe9lG3hbX73LgX3FECeGtY
o2Ai1dr8hFP18sw11iQqzWwDe7JcmXvEVoVGarfovqAwc7UpXr8k3mro7alCN/cpc6ZPnTNj
lnsrbjWbGgneS0zv9zOQaV0nbD4eN78dt/O/bxZZqDcEarcbq6pWHejrY/fh3v63Kw3kekye
MbW/KuQcPPqieoZW9uCGovtKPwtSzsmg1RnaHsvnGAJA83ERW2LXe7SmC9fC58n48CerCnw7
RYgLVlVZ1IpCl9lLLK7fqZYAACAASURBVM8tO9d12YKO+FuoAOXvriQ1cbRSrnqptvzd1XNf
ug+3ZCslEGQRVUJ9OCZBf8Z2V6Hb6InermaktITICXaue9+w7sMK1EWiYCICuYFwqi7dctBI
E4DUQwlvsBFE5eerB24yQNfVzaQO27qG3p5qDfJbFB0WGr00yEP3ZXAHGkmjv9e4HkpUkyl3
f35L3e1h24ZCpZE0LfuFXPiAUWV8vhRibUAj0Swd50zRp9KkXS8UlaR4G9LwMSbQM6ONqTTF
MVe+gdjjTWB+z9g/2b69LJVGUm5tHf445/hwOSqNP8IT8WCTQjOz6mqoIlv1pau6WEpebBtr
3TuSNVCt2otWGgiBOurGxKk9rq+/NHiCCUC+aH39gtT1nbi1nMpzzhx6AqQOfVowVGy6KkB2
XNzTqsE0rqDv6elqjJktVDDr00MTAFS7DHQeMaC9QvY5TAv/4wm/MaM9N2dUQjmmhc/ylidj
PruD5NvJEhcMnOAw1Ht5chkALuEPRKqnxASYxenn7zKojBdPP7ObbEbujQuk/tYaUgCVX89N
6NJcT0d3QvqgWQ6c2E+CWYhN16O9kvdnWoNmhW7ZdTr93EQd+Jm4bMMDgnk0PT2cFUzk68mA
kfZhN495C8yUiZtIFhnG0/l8U3U2MWm9gZ7tANJiz7yrgMqCy/uTGaAzwk35LMFMnAOZuCCi
trjG7SmnqHr5+TK4sxYe0L3bshf4hYwJ3vcOiQgc3Oy+/1D/vZ96rNx/cLdnk0urx405/IHx
7WaA14Zbhfqj/McbP/0vh7tKZN5otd/FHm/+SA5w9Yu5W2HnF75txUSrZhQ1ERGeuEsUvl75
I2O9p0dcp02nAjo3k/wiFm4YHaljAn+sG8P19QHT12d3EMzyUjrrlyxFTQ0FEkmaR18fcH19
Ore+fiWjogKXyqtCUv42/mAGADN5Xj8jK99zPwHenDj4nDNDk1duJgMghQeYYRL/ZkbpHn79
5tXHt7C/22GciRJhRt6dLHHBdE3fUzeunvLSAqhkSfjjSoG8TlZ5y73y81F4wM3Bh89EKsXM
PPIOG7gyv9w6W9Kntxb2iDu5mePOux+zXz4IVd7qs/Yxq4cWzMJtsH6u17QpIFEthztpAnxK
efDmlkCz+FnLZUmwhRSAivOSTYdmm2l3GROx/VBi3Nb5bd/EL565iXXTGePI20SyGZG1R/NO
1at0KqV1nEdjHdqehPf0ghu7bleAjvPo1opY3BNC+1XQ+QoS0RZXZRG5wtOeikz5tw/Kdxkx
caaP98wZ46xUcJ1ujuB9v7ILggPGwuykq1+AYhuyIWh6eISXPrf3JJ7oE0Si+8TjzeKX5859
BBm76H0hkyZ5B0b5mCjgEZ4gY/feRw8PYBGePLAIT+IPNive7/PyOGEdc3xGh98IccZdN7Te
6AjUgb5+ec7Z3RkAJtN27dlxZM+OffO7y8Pbw0czq2ZovBDJCsryADkn9x06dDm7siWhFj5v
DuFb3GqrXOKCYioFlqVv9j/aYekiq7bjIicVRy45k1cJxY9OfO400KCqbQUgNbHwjpohdSD0
UkElEGUR7l59OfIb75+xhERJFTnnBWLKZVHcsWAiYQ+xYCIurb9duS4Q7I4lNcXbRHKgkJRM
san6ypf4VF2H20dpvYGjzIIXPjyQ+Egl8Vo56Lu5tZFl3vllMD3egthtsfhx8DiesT/x9tTA
6+Dp6SaKgvfB+BL/5c0WQ/xDF7TGr9qyjEt48CduwXt+keiiK9jQjfOPI7qD42Ng0aMY3/O/
cdWIPzvgGtO8Q0tWcl7BB6IITwBiyVJjCp5U0y60p9du50wyacd9N4jLMbT6zxOo1sKvJX39
8ldnYtMBLCd4jXHGWiVmPuyJun0x7lh6wEgi2oqdpkzodGXjhYhZFzpEv0nyiJJcC7/KrGwb
rxpL+Jdn75+6q3nYhd6qZACjCRuH9x+x/FYXt7MvTdz4vz5ybX3nW1pEHXluLCOYpfcqG2o9
b+64+4oqdmKsMIvuHz2ZC6DZ2bwZVkWBdq3ahhAZfqFNZHVOojVpXYfxpgtnPd40L/IDHfRG
uRmRn6+ZFHaOP+5JdV6hBQn6XK/bU8KgndXVlHhNjlA1f0AfW5X1e6+GTIvM1ry6MwcAu0Io
qkZqAOmXth84qHXy0EcABQDi7EMI3JA1dBzYfNPmy3NGL3rn3Pzri8pBy6aZymMRnpaOu34f
pG04EZ6IJPYJ7GEDyY5++wKPuTtNVji/fXSruhBuERG0sz6LXRHiahw7RZwRYRWsZX19aWO/
m0y/6sJINKcL+U6s7Y6P88NYa4qTHhVNYieyWZLybkl1BgItfC6NU66MYUTWhq29Omwt29hB
jtGugqqn+CFpA5/7j9mJpPW9rqZ5cXLIWQRffQ6l9xaEGAxejD8Zoux2NpMtvQ9kDecDH5yx
tAJZOAbq86fk/dn7U9ELcsoyzsYnfwCFfvN9u7X74KCxaRsWU05jIDX3zumjT50OxOtWBxPh
nilXxyUhaiK5QFVP1VW69XDqrV8d+IOiPWSM6aygtMvPAfSHjjSSYb4oq5L5r7ZfZYuoIOK2
WFeKIGRJlR3ulT/QnnIXBwCi29CaRaPHVfP5gycpWUXF+L6YuPFQREx/zwF6N+OwgEjSumOW
TN7vsW3H3KgBo6w1IBGbohFm53ObtanYNTJuNX1mxN51wYkkle6BA7HdwiI88VuoyNkzouv8
5E/fS6GP0Y6uS+8cscWSkKk9gg9tmDd00AyFxA3OOrUeZFU0cH4n0XYdExB9Omp2/dexy/Xb
vFynZReP1m8Xa+Kd5P1Zyd3Du+6CfHPTAXPnhCxy0ZUm6YieRxPPlAmbyOoa8E7VbT0VqkO0
UnQd3S2C5j0EaDXM2ViWFfdEeDA9woLEb4tBjPZ0q7OAUH91Tf7ampS2z/V8H+7i+SW6iVXz
1fsuuZWNDSrLX2+23BGHG5BSt1/+4MNytrENHKNijzfBZOz2i2O3c/IBEEZ4kicabFL0POJy
PapzAsDMS9hNUQDV/pFXnvIcQRuIACLwDxNofPr69fFkiq8PXTPv7e3t60BfHOvPzBc+szuU
f9yeWjPHhOYqPjmwlfMN2bZjNiSuZQdZE5r2zx+o6/NVpzWq5/r6dVH3urn+68JTZLMmBMT/
Pko+P6uJPyhPQyQgbeCTWsQzwau9WhBFeKo968gSIoAI/IsEavq8/r/ICtUZEUAEEAFEoP4S
QP1Z/T03yDNEABH4HQK1rq/Po/lHa2ruFpT4GRc7rImX5a83t2fp74jITaTbx5WRVxeQKDGP
7crCM56tSMaBt38CsOvSbdlzTIKy4k2MOZVG6rLuuaDgU2XB8ZG6JNNFd0t4jPFuCOgCAjDy
Ls91tNBqY6rff9E5TNz/yzEHGknL89xX/D0gZsGJ4dokZdfTtSgri/oz3rOCthABRKBxEKgj
fX0AUHEKXrU5aIDc6ysRM1Y/FNXK/zZJCq3nBN9Zvo66xE/wEuoCCi20POfIohNFrb28OlY/
fi40cfUBsmq/ac60tzsWn88jVj3BkgrqAn67tnjO+R57Xz69f9bh9tQFV7FejNyshVbGnjtF
TABmwc09rwzUa/cFXtSfVZ+2xrgmdqwmkZWvGvd9ycAUILUnJf3gHRiKzM16VPLXQ1F+IwQj
Pv4kaBsREEagjvT1seKUjK16O9h10sau7FJsdkMofs/61qhzi+7TufVRnTY8ZkkTlD5aqEOl
tVqaXlZyFxNK7RidQf+RNLElidpj1cvcazs3rt547k15tbAqJ2PZPT4Jf5ZOSUXuyaD+qmyZ
f+4wFOWvT+5/CHpuPKIg/PgYrIkaHuAN08lzPP0FoIm5W9+mZRe2X/mMdWiEov4COqslmUdv
Ut2HtVEgybZxG62RHJ+GdfzyHUZ0fXnwzhdmZd61wx97ubStXeldSfoz5rfUHaOtjHAxQG2N
LiOWYDpfkrVrODyxsgjMVfm5o20xCIgfq0kMY9hLY1WjRckGhuJZ50slOOLjS4A2EQHhBOpG
Xx8vLyfS0ULfPuwhyPTw98X0ikWI3/PJ5LP1UfVGzvFsnX6OpY8q16p3V0V4de1J7ruUm3kA
r64++pyddK8Ymtv00OQ8sUeQUboVn4Q/aw5Xcvvwx86TXPUqMJl/jlo/pvhT/CAxE+Tb9dDl
0rgCtr6rdPt5rNevyWr20Xu2Hdy+cpYFlqy9TUtMgUfeyK4VMB4nZog/GS0veFlMNaRhPklR
ddRKsnNxnUtF02E9c2Kv5eddPJTXz9WodrszkKA/o7/cMHHuoXS5AZNmB88Yaav86Vl+ORAL
4Qu/yKCSUSlOU0g0VxVhFR0iJEAYq6k0ba4pjaTp6O1po0hVa+68+tyJhd30aCT1bp5x7yvY
g8p+E8fbKlFpchaTtnGr0zHy8dHi6YQAXsHoQkIBfsERJfatIhL1F2/ER1hHtBMRkJRAzfX1
WSWpu6/ac3yTn60C/frqddh9NGLxezwxr0x+Ma6PKtVj8YagGSsiPHVZ9hRNBpsCPL14J/ny
G03rTkovziUnX3oNCh3tWnPae/obTFiVNyNZmVfCn6XPCsS1AygvfJXHBGoLFU4XiRfO1ned
7t6tKb5Nktfv6zyoG/3Crod0VaetZwPw4CVSTbRo0vDt3cefTAl0Vlm14/tfvt1om7e74o/v
Keg7ora7M0n6s/JPqR8ANPrOnBu4dGn0kYQrh+wo/DHrvhMFnWM1kewwJe1cx3XlDXNH1JYR
z1X5wKDNXxAQFaup5G4Co49HV7ncpGUDp97t4OHaquzlnkUxqSyt8LK0dP0Z+6KHqr464e2z
/zUWp517ESIYzSf6TDCiBPhtJWhuP9A6IiCUQF3o67MLa9q2h72L+/TZXaTgU8KRZ6XCxO+x
5ERapmRZWSkSkCgK7B/FyMpd+raCb7e27Hoia+U5xawkaefu+wBmA0yUeKvHn5H3KHuLN3pA
dRKyDFZeeQmdo8qKH8L0XdesWLYqyMmAnbSy8HrogKnnv5kHJWx25SjvMMpKK4AkI0fB1A3F
EvWXVjVsWvQCm/MAo+htnpy+JkuXjiTXfpjNs0XhH/oPaV3rSnUSzM/kjYf2agqf9jkYaqpY
DnJffirzp7QR34RXliJU6p4dpiRgxLilPGHuuOe+VeyFzFWrjqMVMQiIjNUk1SN67ZIwX3MA
aOGxYk3wnHGGAAWv8lhPa8n0XOA31Nlj1uRWAI/+e/KDrzS2YHRVbCf2wJBP9JloKCpElV/8
ME58nqBNREAIgTrQ1+eUVJh8fP+mVYsW3mAAqLZSkeKW9OMSv+ck5/qU1e9jqwLl19esjE/c
vWZ/FvuQjF7P7jTIu3Lvq3G/zlZ2LT7cyCgDg/6dMAFh1iKjS5ixWhfw0OVsbO4kYqGomrZu
AgUvX38T/lQHAOP9kbEjtjyHFsNctTJOH4299gH7CY6e++QDE1qYG2A3H8UT9Zc3duv+9eDR
Zz+YpU+PHcjt4mTKkQ6XazcxctGiqLGtCNt+ETX49SGeqafo5GQ115irCTbbdp66lHjjzsGI
O4lvT2Rt5hXCZxQwhEnd42FKRquTAYoV1/Jo53eNSi2PADIeNki0C+ioBATYsZoAi9XEyobF
appr3hrfUKCpypKkZKTJAM20mlGAga0xK1lBE4BBL2MwobKiRPDhXWIPhIo+E44oa64ETVw6
2osICBKodX39qiIKT4cHngYgq5gM918z1VBGtlJs8XuOPmqY5yzbkZZa8N9n3Kp8a/uOMvsT
6Pp2HdR19TvT4Hm+Sjc7Pa4Gnzgjry7g+S5VLhKtKFoMs1Y4cfNk6rexGkIFf+gf793Hxq/v
YxfNiAUA612FPbWk8lPOZ4HG+IHGnPufAvYFdAGPj7MNjbYf626wgy5rMHTTPttmJE5kDhkd
J5+JmIVafFKf5ZAE/VllaWGphr330n7eS8uzNllaLkp78Ci3vAN3xYRI6eNJFDW5w5Rw5yJQ
ta+aqzaT5pmrcmdD66IJVMVqCrRQxH7n3D55+e3DRzNDF1SN+YTnZ1wLDIjK0ri+8Q2QOjqa
KUIKf9rqgSEmGG1DJMCPDUXX78WGoiTts9hQlCJMlV98JWh+N9A2IiCcQC3r6wMIaqKyCidr
EYnfE2vnA0cfFcu6heO8ysDzefmcjbV5RRwhfeAyQpiRV8KfUJifY5akajvNXT3h0K7bBXYD
VHnrQtGtDguQWxTNycL6rMg+tzcZjEK8zXE9fnF1VkG9b3TCEy5bym5nUzlC/rjlpvbnX9rz
lvV7W2K0bZwCylIXWLc1cZniu3CJX1BMGkATo7ZqlOp27dDl7B8V1VL3wufdPFl+Molmr8Ln
qhxv0OevCFTHanIa5uzk7jXRWhrexB1L50TTFZVfvtsA8rmwjbfpBs6bN7sbVItBV2XCB4ZK
3y5EzBodcqVAChPgt1B8u2NuVIqetQYrFT6i7K6QEuY565CUhRZrJ64E7WlZvCdgguvksANv
tK1aVcdOqLKOr1Tk7BmqaWC3OD1zeR8jzSF7s2v85iqvXbSFCPyjBJp0XrxurmfLvFwhEUiJ
sVR+f1/SecayNdONueaLxEn/9l4J9IgrPsQvnRt29Mbj998qQF7fdsLaLcFDtChfboT0G7nx
3jeADtFvLvS7EzjKa3f6z+bdh5u+OHSh2PFY5tmeb4O79FxW4HI5M6Y31r8zebIkjfgQ2LHb
dph66f5G7NFX9sL4fHHu2Nl7s1hz1SWDq55b5SRoSJ/i62nWrFa1qMdalsF7smrmUAPPVdfn
q07xID3iOsWLjP95AuJ/HyW430jRcl6yz5krOh2rXsq8E14dgqBzXFNmLA+JPwtRSDop/rnq
n6eISkQEEAFEABFoOAQk6M8aTqWQpzUnwB8jreaWUE5EABFABP4oAQl+P/ujfqHCEAFEABFA
BBABSQig/kwSWigtIoAINBAC7tq4Mh+N6/+ea7LLCUT7fq2aL5ZEXwPh0qjdRPcbG/XpRZVD
BP5VAs4z/A2+l3+8sulYRrmave9IIzlp3S4KrzaMmHvoWfMBk2Z3ki/MvHsPF+1jIVJxCg4e
UJG4aMX5iBmrhz4M71z9dBou0XfDVGfcmC5UNAWox1cUOjn1+OT8tmsV+VfWTOpkrIUNUbU7
28879qyEJSHALE6J6tNaHdvffdWpDWNbqmPDWJ35j8WTGxVruIoUpX/7/CEDv0FgWGBUWGi4
r7UaALQevTQsNHrxRCvFPAHRvipJKQHVfHbhJWKp+gEjL2mJjQGNRLN0nDNFny+wGaHWPqEq
v2h5VQnkT38DXcPNKkl/Vlv6+iJoEYUIYRRcXTOpY9vWNCNTHVMbe//YZ+I1uiKK+TcOlT6M
cO69+MR9GVvf2b5jjfIubprSbfKpj5gYY8nDmC1Jn5o6Rx++ttYsact/r5ndwmNPHfc2FE9Q
DSlK/xtXUOOrJYFoX5VIlIBqPrv6MmKp+n27HThh/c1CTDjfKO0sSzifnx+f1r4IVX5h8qr5
yf5D/fd+6rFy/8Hdnk0urR435vAHfnVV/lL/pW0J+rPa0dcXDVcwRAg9Y+2IYadbRial5b9I
y7m7b7pWTpZI/THRBfxDR4tvLd/4DEidNp/bt2Hxkj2nDkxSh6JTUfte/0gPt+11uAjga7z/
iJ72I9e8BaDfmTdyyPTrr0/NddBUxeZqsgbW4+JzGQTjQYHhaglSlP6HLquGXVWWaF+kzwib
1pB152DEBJs5NziiSwKq+eyqSqnwydiTmZiqX+AEh6Hey5PLAN7cfUsvzb6UVAhStiEbgmZE
RHmxhfP5YPFq7ZeJUOUXIq/6/sW5/z4BfDzhN2a05+aMSihPSXjxE5D8KQe0BP2ZOPr6Jczi
xzvH9TSWotJIGua9gk6+LgMgDkFC1AiCYFC4h6tjisavnm2nib2aTlYwGDJ77kBMBBItvyKQ
+yj1B0BLu54a2I+kJKX2Th1kAF5dz67QcVkSbCEFoOK8ZNPBzfP7KwHIdVu0aedS/UvBW1Iq
B0ecitsbM9uxtSKZSA6/oCWfCDWhaABSlP7V+UHH/wIBjmhf7Nlbnx6EmgLkY6J9LEf4VfOF
uSdCTZ9EIpMwAXrA/xMwwKu1L8IO8MurSnHLq1K6h1+/efXxLezvdlhHRTEF7wXcaYQ7JOgZ
CKbqAvr69Dv+boH7niiPXbJiYc+Sq5u9XDa/ZEdI5QtBIp52EaMw81FJq5764t0Ga4Tnpy6q
RG7apmcvPTkAaof+zqNc7NopASga9nMZYmesrycPeec2hm06cftHq74WKuVZguPBLDm+4aoU
Gh7WxWlCNuuAALFoH6sgftV8ruJ5JPoIVf3k9O16qUDFldCZkRuCAncS32/ksojpJDHEUQfk
ySNj4OigARW3d+y+lZWVdvNAuN/85J/iCt7zWGqkGxL0ZwRT9dsU3qZNIfu/859Bxi5ktd/E
hREzTAAen7yTx4pOwB+CROJG8Nv1Ge3atKNpd5py52cjPRu1Wi1N8/aKAK8uXfuEjR2Y31Lj
H9MBWvbQFyqRTVYbHHv1wPrpfY1IT/eGT+vpGZ+LnzvB8SCfowTxkKoUpfmiH/HlRJuIwJ8k
IN1igJuVQmbCtnXrNyXm69v6Hoi0VWZPpjDVfN8lB9KamgxfvnGqIfdtBx610u+tvSI9TWRv
zrcZHlNsTGO7r9Q9asd0K5Ws/StiMlr30QKQUcTmVCIW2TZEdkRkAAAJ5E9FG2qkRyV4Xp8z
VRehry8KkkAIEgJZfYH8UirGHeTXX8suG2gmq9RjXUbG5z0O9okVVT/hCmRAO6oINLWa79vm
WOQ9nwHuj92Mv13dfeAzUIf4jzWQBiDWJK7Mv7pyb0aLTnaj2jR9fvVZSmF+JTYe3LQNGw9q
DKTm3jl99KnTgXhdBQVleYCck/sOYeL6vTVS5woocOKK0rOOPpsWZPQai340ryr6UZWDaAUR
qGsC8pbh74vCq0shFu3T9rme71OdSHBNQKKPQNWP/uNnc/eogyHNfj7YM/8CyNg5GitUWeKW
3VGsVrInUuU3jUjLj2BldDjOKGKbmJeSP4+1aua5K8lzV5VlfKUrkWQgb5J/Y0uC/gybqo+8
1tq+t2lzeBZfpa+fw920dXYYoL4p5mKI38oc7dvr0gE6OHVTI+N3HPlDkJTcFWwEBZnLW/h5
KfWZtcp+/5y+zWWgvLjgp6hgdIIG/uE9chZz4y8rzvPfdGbLmkvQxMDOJ3D9IqfmBGL5HEhk
ZkHy7lUb339jgrxur+DwYXrNVKKORdNnRu4JmLADFFp0sJuGyeHzRl2yHcHJz/2pJBD9iPso
WkcEGhuBsneXIxZffFMKJOU2Q+Zt3DpM1FetsVW+ntRHgv4Mn6rfO5qw7TJLX993LTZVp3Sa
MqHTlY0XImZd6BD9Jskj+lhEybSIfaELmDJaPads3+1jKAMZWGXZIUjS2CFIKExWIDteDgRB
4Uz9jsSS587p1eZ1mbScvKqpY2CkWfWLjrzZ0RYvAQqtt1/MfT/endhWE7s9OZxJbodVT/NX
sZIo9Fl/8fF63uRNicaDSFGaFxLaQgRkjKfE5kxBHP4qAQn6M+KpOvA1bdDBa991r33clWLd
3KI0d1sTszGm+gDRHJmi5xGX61GdBl+j9Zm94+Fsvp1oExFABBABRAAR4CIg+hdLroRoFRFA
BBABRAARqMcEJJif1bgW3L+F1tgIyogIIAKIACKACIgggOZnIuCgQ4gAIoAIIAINhgDqzxrM
qUKOIgKIACKACIgggPozEXDQIUQAEUAEEIEGQ0CS/uwv6es3GJbIUUQAEUAEEIG/R0CC/uzv
6Ov/PTSoZEQAEUAEEIEGRECC5xu59PUHqLHylSTP6eh8AwDSpplqTlP3vP0kyuTlnmnTVhx4
lM+Q17WfErE72F6LkRHcpeeyj5ZeA8sOH08vb+myLnb9ZGNm8hwBkSRcX59Gz0wgCVFkakBk
/7CrQ0fa/+ESG3FxFy5caMS1a5RVQ9d/ozytrEqJ/32UoD/D9fUPndrnYLhPuVU3B7fJi/wc
sUh3VyaufNl8XMRiR33j1nQ83BzZZc3+Yc1uhk1YPW6M0f0LbrhTmL7++n3Rib7+cd4+Xe0T
3Rsx/z9dNfHP95/2DJWHCNQ9AXT91z3jhlGCBPcbxdLXFwwv8oIthv/b+voNAyjyEhFABBAB
ROCvEJBgfia2vj6le3hStFVTPAoDWUlPEd5gVauRvv5fYYIKRQQQAUQAEWh4BCToz8TS1ycK
LzIEx1Izff2GRxR5jAggAogAIvA3CEhwv5E4FB5PpLsCha5Rx6I9LYv3BExwnRx24I22FRZe
BF/Y+vq3Ofr6hLWtyNkzVNPAbnF65vI+RppD9maLF8aa0BbaiQggAogAIvAPESAxmZy4IVy1
tre3j4uttUe8yvDnGwtcLmfG9FbkKuXfWR060h79ZP3vnO6/W1MSifhL/Xe9QqUjAn+AgATz
sz/gDSoCEUAEEAFEABGoGQEJfj+rWQEAgPT1a4wOZUQEEAFEABEQkwCan4kJCiVDBBABRAAR
qNcEUH9Wr08Pcg4RQAQQAURATAKoPxMTFEqGCCACiAAiUK8JoP6sXp8e5BwigAggAoiAmARQ
fyYmKJQMEUAEEAFEoF4TQP1ZvT49yDlEABFABBABMQmg/kxMUCgZIoAIIAKIQL0mQCwlYG+P
gmnV5mlD4iC1SRPZEkkA6YOIxIMONmYCxP1ZY64xqhsi0KgJoP6sUZ9eVDlRBND9RlF00DFE
ABFABBCBhkIA9WcN5UwhPxEBRAARQAREEUD9mSg66BgigAggAohAQyGA+rOGcqaQn4gAIoAI
IAKiCKD+TBQddAwRQAQQAUSgoRBA/VlDOVPIT0QAEUAEEAFRBFB/JooOOoYIIAKIACLQUAig
/qyhnCnkJyKACCACiIAoAqg/E0UHHUMEEAFEABFoKARQf9ZQzhTyExFABBABREAUAYqog+gY
IoAIIAL1ngDSQ1GrEwAAHc9JREFUm633p+h3HRRTAhf1Z78LGuVHBBCBv04gLvbCX/cBOVBH
BIaOFFcfH91vrKNTgMwiAogAIoAI/FECqD/7o7hRYYgAIoAIIAJ1RAD1Z3UEFplFBBABRAAR
+KMEUH/2R3GjwhABRAARQATqiADqz+oILDKLCCACiAAi8EcJoP7sj+JGhSECiAAigAjUEQHU
n9URWGQWEUAEEAFE4I8SQP3ZH8WNCkMEEAFEABGoIwKoP6sjsMgsIoAI/GUCzJLnJ0KHWLWV
pdJI1OZq3UbOPvzsO/N7ors2CdvD+9d9c1Y5n7/lH69t8hrYRUUFT9nCvMuYJcfelgMUn3HW
IFFpljveMQCAnhlqSSNRW7rf+MF/qNoeO0t1odqTkn5UH25Ya/R3ZwOcOzXFAcromHcctzWj
DIDxbnMPGolqHvCkTGh1xEkjNLMYB5A+iBiQUBJEABFocATKs/eOs5yR9AN0HSf6dSBlHNme
uHrytQdFSVucZ/gbfGfS3xzbeiYHFK3GjOuuTJLRsVSW4q4j40P8VHOPE3kgZzLQc3I7pW/Z
Ty79dyg+x99NhzuZZOvNbMaOt1AiA5CplnrSPHkrKxgkihSJZ1+93GDkxnp7Rd9gGA3yntlO
9uvbjJvpmfkVADJKFmOmz3zbrLcaD8c/WwcmWhABRKAREQCARlQbsarSt2/fonwm31/ueR8N
AJDtH5NWgR36nLunvyIA0Mbe+Ignfn/MRR4AjCMefOTPW5TPzL3opwUA5C7hd0o5litzn71/
/5lZ9Op0b6zJtlj1CLOcd3NJKwBoOvpsDv8hTkbi/YWPNpkBgOqgSU6mTYDUce3rx3vm2hs1
w3oAiob5sLWXsxhFecXXlg1tJQsgrdPbe1Z7AJBzPpHNKdQwLOUDs+jFUSsAUPb47w2zKL80
VcAIuyAVR283S8y6ksXEve8LMAhlTw8tGtRODZ/WKLZ0jX2Wm3dwoBJAM7ejX77mM/NuhbUG
AJNobkSfLvtrA0Cr4IsvcbAc8uxStP2vv2cKK7E6zduipGAbOQAFq/BqShxTfHv69u0r1nXA
ZKL7jX92+IBKQwQQgT9CIP/JnU8A0NbNRh2fL5DVrV2w7iP/4YO8il96wCh4eO0DALSf4GQg
C0x6cUFefkH+D5IcufKXeUUkeDjbnMK6z9n3yCe2pYIzp344BIVFucuud/WIuEgesWb/uV2z
TV4cnenkd/r9oyXuC+KyKjuMC5xpnnUglc82WYrEO6MrTV3iLGCkgFVS4cW7KpNXzO/f9NvD
7QvWZJRBafpSp1GhZzKUBgVu3hA131FXmgm0PrMna8PXU+vPfqosexG36zlQbHxG6nPNJWVb
DnHQBsgK62tI0bbsMiJgddJ7IXcYBUpku19ZfG+No0PYDYX+m5IOz+Wr0+9sovuNv0MP5UUE
EIH6TYBE5m3wsdmrJB7jub/9N8rY+QaWTd3zv9drjQHvRZiVLEusT76OhbgMqvXocWbY/UZZ
w7aKbMcUh27cGmlPpT+NNJkNAJlb/cZsZee+FX/bNPktgNrITZGzrGQ/NrvafuIDbsv8taO/
/u9oFr+RUy/KOmGZVEYvD/a2qmhxJDLh8qenn+l06bOHn2NV2r8lsDs2VWUtJtNmd1o1+1rU
0WdG+UeyQNF1Wn8t7juIpCY9IpLud9+zI/7SlZt3Us7vSjl//tWF5PUdOQaqP/lLBBPWsQ/b
Zq2EJn23X97lZSBTnfz311B/9vsMkQVEABGodwRoZl3V4eHnzPi7hZ5ONDJU5t2Ox6Y36p07
q/+62ZNSteipBQ8+pO48le3po2e17OjuPbM9d77Fq0lpqqEE8CX/VQEddOTp+VmF2E285koU
AOwBERFLy6GBq7202b0D4x2eUtlAQ646C83t4JHpJvgOJlOqKSQMxG4gg0AfzOrJGHQGExg/
8r5XG8DWeI2o6MmewfYq0JpIATCkKNhdOXZfjO2v5O3hKXqu/sNCRh5ZE+Rf+RbUx83qqcwz
JGDSC7/KmQ/12zjUDyrz40ZZuJ3/eP1hfkVHwZt9wkqEZkrw9duNfacyR8xo34THOm9FJN0S
dEFSCyg9IoAIIAL1joB8h4D5PeXh5+nxA10DlwcHjrPxOP8dFB0WzexcPRf5v70zgYs5f+P4
d6bpplFNSpHSSYdclZIrg5SlyJWjrRwr51+Rq3JFlCwREkXJusq5FEvWlbRYigjFylFKRccc
zf/1m2ammWmmnZLt18wzr93X/I7v8Tzv52Wevr/j84i3WtkqMMydguoyg4b291oZef7mzadl
3NbKVp7OGgj9s2+eV2DIL94LEr8gpOsywUSR26Al3wqGLp5GCJWc+/V41ouC55mX45fNi8zT
Huqqj1DJMf/lUdvXL13FW5zJa5jokhDKT4777ciuNev/5swocpAcpuifeQVD10nGCH067DVn
c3T8gQ0r150swq7EEtSdVvp1RyW3/yxFRjN9B2B3Hfk+9NfRLiZ6w6d7B4auXBW04Xo1Quq9
LTT+/W+EhjG6/pxw2L9HTUawm/ve3NZ8zFO0ow0TwxYQAAJAoD0SkO/hnZgdt8DNvPzivu2b
9l16Uac9LebKyendJPvlldN13/0wJXi6nVbB+UPh23Yl53d2cF+4abqRIiKoD9uatt3LQedd
yv7de9PLegzyTUhda6fyfZSUrEJSE4JGdn++L2DitNkLd2XQrB0M1KyDEzd69CA8Orw5Mttw
KvY8CPtD0HQNC3HVk8vdF7DqmpYr9kAK+yNyEHGX9JQsgs8krnIxr7wQuXBx0JZL/zBR/VpJ
0cpvySBsFWm9aIaZcJaWowyeMtb8a/bJA9FbYlJzOlhODE2IHNiBa4FE33JazjsuxM3o8u1K
kJunRD0ka0RgCa41JesFrYAAEMApAQJB5v5RU6nUf6nnSXud6NPX/5KiZ1z23nF6kiU0/MW3
4vx4k7HX5MenPEsZ3rz80Rxf6ipeZt+985u/f3zRqAOvjo3XbvNFz4QpVKhP3ZwQQlsgAASk
mICCode+DLmYY88LbhfWeBrx3a+SYqdb6FrNo4hpo46WdbSYdiByTNsns2Z50V7/UmmWk9AY
CAABGSdAULWeGoA9r9+OP2puqR8bPRjS6v6oOMW8YMW0+rD/yYBtvpT8T7yESYAAEAACQEDa
CUA+k/YIg39AAAgAAdkgAPlMNuIMXgIBIAAEpJ0A5DNpjzD4BwSAABCQDQKQz2QjzuAlEJAx
ApzSJLyiMNojL1Vwa5rwH3wvqnzM4B0FPI1HVuXjuGkOJuxSL121bSeve1SDanPX9KYQvrfm
C+1ZrF9fc10Cud/qHJpQeJjFf6wY00fX3NJgVPDFj0xEf5u81M2wu0FHXSNjz4gbpTwZydon
2wYTyGyDGYW/Og8NfSo8lNDI0rwLzzdKc3TBNyAg6wRU7L1mOmoQEUHFCntMv4LNg/9gxx7s
8jH099f3nMyla1H9p5goyevbkrl/6tPyo/1WJD/rMnr2//orl+bdu/+shI5IlME+/lVVNvp8
Or3NJ02k2PnEnPY96xvQqG/ljZBll5wO518wff2rm+vqjId7euqMWJsRNkCf9OHE3JHe20bk
bLZRRoj+6nBgeo/BuvVCXI2GkbUDkM9kLeLgLxBofwSoVGoLjdZ1WxK82pSrkMGRVxQ8aLJ8
myeq/mvliZO5RabTNmwcq84/F/3j4yKEtEcsXrF8dH1hFYRQ7dsbB3dHfXYf414ywW7lI157
x0OlF91IjxMWLNiS9LCEqaxPnRcev4aqS6rOXNbP/gCafzV7d3+e3BaJYu1AoeVdJiBhffrq
vBO3yF6nzFUI8uYTp2nHpT5hDB/m2oU9j86gEd2+nSvF1o+Md0lrz/QNCSz5ZT3PBGyj+sX+
Od7JVjtSAgZ04uZlgQbSugP5TFojC34BAaki8NIjRZw/RqfdxZ1C+WsG6K7BzhpvzLqxmqML
JXiQl+1EDqJsNmGoWvLZIy7GR9SN7F0mzgleMtaMqzdPpFAjEjSL6ZVZu1dGPaBZDeqh/DVz
8YSAw0T3HYmenW5t9ImaOd0kO91LIEWKnEfgIP1zfgV5BAVb/cmRu2lVp3yoRaheT6smL35/
kdMya1XE/Hhx3V6dFZdslPhLrtR9y93lPf+8Q8zZRb07tqLUr4B9eN2BfIbXyIBdQAAIfD8B
ZdvJXgM15JC8noMGNwshkQfFzEXU8ojNuDxo/8GzV9Nu3j0afjftbcrLHZr1rQnKBiPG675O
8pn/gKY5bt+FQAuUG/w7VnctZcl0Tv7NuvyiymuI3bbH9HBEJPFsEDNd04eZny+v9jvUMyxj
DIVQdm3tdsKKE46diNkNnRjvjvjOMvQ9em6hBbceTcNJ6d+CfCb9MQYPgQB+CBC4dcL+I+VY
vZ8C1je63ih4sGk4dTWlNdrUuRtGzt1Af7mnb9/gJ389/MBw5naqK/1z/ej5lyptgjJjPLrJ
oxr2CdLAzdciHNTYyyNix+6qCLHqmAwGIsnJNarHxh2J/1te01it/EUJHXWSZ5a/LVYy0FFE
iPU1K3LGvAKf35Ncu8ihmnd37ry4fLK/qS+rtqy8mjRiIulSJJIjW9pSnt64Uzjbohfvuib/
yNK9LVMXV6U7lOAdEGhPBAjsD/4trn282rGnhfs8/7XrlgTFPkGog0lPLe4qi1l0fMbkvc+R
nqeHbu65E8duFBGNxrhoI8aduPjbL18+uZW0ecmqzCqEqu+tsFHWtlmcXd2kx4xPWWlXX1Wx
lM0mDvxy9MSzb6yapyeTPtiOs1SuzTvo53l56LF4H3O2/KSS5arH7wpKC/NL807P6d5725WT
CwxIiNCh35Ijh6yOj5tz9KXwTbkmZ5aOk5DPpCOO4AUQaJcE6rMab9GGQx/k9UZPdFDJu7x/
5649aSUGQ/yTtg7hFbhkvL+fjdXvencseNHMufOnbsn+1sFu28kI774VCYE+HnM2Jr3p6mCk
IuY2FqMwYYKOoXNITl7YcBOdnw4XMGoeRy8JvFzMRB2HrI+gXvcyNLFxuWAXHTakU1XWutAr
hY92U80N1fQM9LwulYpTciSSndYkR3fZ77Yo9S0dh0B/pEkyV1riR8KEsYFA2xPAeb2YplOX
uIuQVCq16edB/qVeTNuHBSxoOQGoF9NydtATCACBtiLAy3biEltbGQbztgsCcL2xXYQJjAQC
skWgvdxdk62o4N5byGe4DxEYCASaSYB3UwqHG81yhWd/s3pBY5klAPlMZkMPjksnARa+P82C
znOlWb2gscwSgPfPZDb04DgQwCkBuHmG08Dg3ixYn+E+RGAgEJANAq2+GqureJAQONzGkEim
EHQs+vnse9T0218CmGufJW0N2hR/r5ynZC9wuqkdkdL+TXXA07m60vPeRgSz5XeqELccgf2m
55hmP+NNrA2ZQrDd+bzxawB1n09P0SdYBt9rkrBw0YBW9xvWZ62OFAYEAkCgGQR+1GqM9jR6
ku3a+wxV6yn+zt2qXlz7Iy3n65zeymJeBhO2uDbv6Nbwm5bdZk5v0NoXbsO/X8esI8oJrA/4
VfzZr0BzmjduyT9OG2/TC48Hp5Sbrvbtp4IQR75ZApOImiMXjKe4xoVcWnjBXUsAQ0PvRkUD
Yod3kjAaDYM0uSVm4ib7wEkgAASAwHcSaPXVmJA9X+9ujLjPQKbr0n9PDlu9dUf8vb+OTtRE
lY/jZw0xJ2Ertr4jQ9OLGIhTzKzzqLmzh5PJFHlr37hX5ZnL7MffRAg9WWCpQzAJuFvNEttR
e5TvTKeOZIt5wmsTTMU/YuP6iA1Bs/TzsXppDS2rRIyGmJ+uhjoaUgiUvmOWzTMgU+Q90sur
s+YaU9gGIFpehBmZojr9eiUSb4yAFzRMIys3cQ7VSpFMIaibOm5+VHh6khKZYn/wLQOhb7cX
a5EpPdbn8AmJ0F+fSXyAuk90NeSWJBDCiu0y6xdqZG4ZuTHnyhDqYDNxhFpt+oHrn7AFbXXm
sl4Eci//+3zrtfqiAZ7mKgRFrGhAZuoTvpMipmnBIchnLYAGXYAAEGghgR+dxnhmFWX/VY6Q
4U8exor1xwgkRYWqzIAJAYc/OkUmHo337nA1aub034o4i5Dav26qekUu6UMoPBMUldt1Vtgy
Y4RQl5nhe4/tmmVKE9+xJvtM+bDQ8OVj9bgqWBwbMBV/dhVQ+00v2FfoeC07ZYswo/JWoG/0
7VKDqQE/mz39vZDnCEKIKCewjPkq3hgBLx5UfcsM9FgSe4/hvGTz/i1+Dp1IWiP8PdVRZuyZ
V/Sqh79dLkGmflNMOIAQQqyKv9LykHIvJ33+dMZxRN6KUxmHqEWNSNh/9EDk0j5YM6yqAEJI
2cTZCDEfpeWKy1LsogHGDUUDCrCiAa37geuNrcsTRgMCQAC3BGpeXhQhfj9RCzOYNGRjiO/Y
L7Rfdzx48qpUxXq4kw6KzNe0dR0/uRup5pEo1fz6jsSBO2NDp3VuvDQQUPG/iqUlTsuaR8EL
Gmnwl1pfzyhDpCGh0UFuKq5lqYN2/sPjSBAQMZbYi5KK/MyL75GCc8SRUFdNTkqsWTqja+LO
+MMP+5T+XoKsl07pwZe66KWvilmIrKchkBg4jtRVPEpIuluBUOOqAtjlVLkOuhR59OCf91Us
pKrcOvUEeAQk3BAwW8I+0AwIAAEggHMCuv36ktGz1+dS8pdaWmArEBa9hsZ+tqOR+P0bzBVl
9U4KCMmxC7qwRD8DIrqjqk4X1cbJDCHEp+Jfm4vlM8GWwqOVX8eM5P7PVWdkpzImvQ4h5teS
Sj7mwt2RWC8Eb1AqWXnPsd4ZvCdoPesjYeBqt+78OYCooCKPEL2axp2ePSHHEcab2BtJd9nF
S4WrCrCbMWtrGIigoETCMqeIegIiiwbwedQKmyLj0ArjwhBAAAgAgVYkYHTaXdx/ImfpYL82
oD8J5QWPGD15xfqAxd62/bzOq7uIEr8X2Z+ooq6MUOGZI8nJfxTU9RCpmi+y478fVBKlwa9k
MHyIBmJmhC7YGr1qxUHO9UaSpokWQp+uHkg6ujk0+T17bJHdRc6qaDzGtQui/7FsWvDemD1b
/heN3bGSN/AIcJIvu5/9Rd7Rf1QXgYukJE1L0w7oc/7rStEZvX4W5jvhqgLY44+0D38XsZCe
jSF28VFUPQERRQNEWv0dB/lz83cMA12BABAAAj+MQHp6ehNjU6lUEWcVzBccz1Rbvyzq5PG9
j5FS5z5jFll0tnc7GUFbvDUh0CcOqej1dl4gVvxetf88n/7Xd6eHL03vHfHm2qxtknYUYYrw
IbYGv7AZHR22xfq/8NudHB47ynt091un3iGE5PWnr5uTOGt/3Ipto6c6aqM0bIkmsrvwHOx9
Vbutp6Joi8MP71yTRtAYuNwVOyqn7bbYVe3PVPpwv1HaQisa1T6ejiopt848rpyhTRY5JJa5
+KoKHEMIOR4qHawrV5J16SXS/tnVjP9ZToEh2EUDZngZxtEUDSfsOTKklR9uRAiBvr4AcNgB
AkCg3RGgUqnSpa9Pfx3T12btM+fkktNUsVmlhWFilubcvXJi7bSot1NTsw8Pq685yjfW1ztz
+oxNtk0sSBzNveXGd1bsJqPggEuPZV9D72YE9+S7ISe2fXNOgL5+c2hBWyAABICAjBD49ufy
8ZNvKvacHr3ZqVEywxZ/A0J2rlC8XfyhBmlKXuG67uu76gGLNo1baNbayaxZYYH1WbNwQWMg
AARwR0Dq1me4I9y2Bkm+PhO6etq2ZsPsQAAIAAEgAARaSADyWQvBQTcgAASAABDAFQHIZ7gK
BxgDBIAAEAACLSQA+ayF4KAbEAACeCYgKHKvZjMxKO0To6UG01/HWNULKjYxQm0uJtLYdfa1
bw2N+DoKCvaLatzQDSH0A3Xuac9i/fqa6xLI/VbnYG+OYZKMxX+sGNNH19zSYFTwxY9MhMpO
ulAIut4Xv7DfrGZ9TpnUlaDuca5CwEbc7UA+w11IwCAgAARajYDGuDXbY4JGK72+Hr4o6oE4
acFWmY5EGezjv9R/jL68yOHYgv1b47MqmnpVmdeTo3Pvy9a55x391416nfu3cSGXisVPQ6TY
+cScPrWqF+9NMa7y/dPsCy535q/OwLIYsZOebm7C3XIWQqzPtxJeGXZWFVCR/Fdb2qAB5LM2
gA5TAgEg8B8R6GjmMMzFuX9XhBC9BluMMD+dmuOoSWFrw3cb6L4j60udSIl9GtaUK3g/LvpR
vdZUzcO13cgUow05tdX3MOX7fhG5tG/X/HoQyE7b8z/cOLg7avfFN/TGHWvvCwn217D9Z3w4
EzRKkyPqz1kqsU/8SJ17RKJYO9gZayjy0pNo5Xvl3pPt8o/eLWPVFd/47f1Q95689Pcfxa75
00A+az4z6AEEgEB7IVC4dUwfA+rGB0jBKcC/vzJCBFJn2+nhB5LTTu1b1fNNasjiPfncRCIk
Ts8RvO8+ZZm3ac7FegEqJaNhdqro1Y2/P/yTdasYoVcZDz8VXLtfgboMctLhqi2J6ChvJCTY
X7+Gq77z2/sBsz26MzBR/wdVPKg/VOeeNwtvQ4zyvaql5+DCYzdKiq8kF4/0MMF/OkOQz3gx
hQ0gAASkjkBnr+0Jp/csGaJC+zNqJ3YdjcVilt3ZudzHZcLcsMxahN7ce8vNZ2yJfW9vDzOE
Sl6VVBRcyyhDck4h0UGLtoR769ejUbUYa4nQ0yt3M/94o+PYv+OLi5mZV18jlX7Optzfe9qb
xh2J6mzBfoTYgv2jrTTqZROJA6NiNmxY42PBnrGhfIpYnXu/xb/MXehlr8Y2hq1z72ZPSz/0
gKY5bt+FQAvMhHqd+0q2zj1i69x/frwLy+TN/yj3mjbo7aHU0wmfR0xuD+kM8lnzYww9gAAQ
aDcE1Ho6Ud29Fv7PVg59vHz8WQ3tedzsjRdzdPzP3sw466uLUB29jismL0pin6ioKEdABBKm
O499iOq2I4xQ5e29h/5WdPCeZ1197WB8NkLWoy06CjIR7ih4lrOnqqOtQiDIK2ArO35Rf/E6
9zu2bNoeNM6Q079B5/5yjEc3jomNde6ZPBdFWoHkNY3Vyl+UYEXamOVvi5UMdOpLohGUrDwH
PQveXDTqJ9OGImmix8DFUVif4SIMYAQQAAI/hEBp5unEPduD195kIqRppCHHYtYyECJ10NBg
vbyQXtTEnIpswXv6nzsiU9PidyS+5DRV6D54IAUVX7//xWzkAAdnvaKbubXIcFR/Td5vqYI+
ppTfqKOAYH8VN4eKNuCH6tw3nlK88r1SL7+twcHbZhi1qYxVY4vFHOHFQMx5OAwEgAAQaL8E
Ss9tXu6/LumJmsWksN3zjRUUzX23elso3lo1aFJshRmlKcfYgvcDVbI2ei9Nluujy22qbErt
h/26Gzj37qxvPwAbQsPeuTvfD77ojmzB/o6V6eFLp4Ve/yz+6UP2PGyde5Rz5jF/yTOuBdxv
fp37mXPnT92S/Q0hZr3OPbUJnXtGYcIEHUPnkJy8sOEmOj8dLmCwle+vexma2LhcsIsO41O+
V+g27he/0bqcpR93Zrx+g34jXiMDdgEBICAZAanUb8Shzr1k0Wj9VpLrN3KfyGl9G2BEIAAE
gAAQaCGBdq1z30Kfv7sb5LPvRggDAAEgAARanQBJzyVwl0szhyV2clwY5tjMTtLTHO6fSU8s
wRMgAASAgCwTgHwmy9EH34EAEAAC0kMA8pn0xBI8AQJAAAjIMgHIZ7IcffAdCAABICA9BCCf
SU8swRMgAASAgCwTgHwmy9EH34EAEAAC0kMA8pn0xBI8AQJAAAjIMgHIZ7IcffAdCAABICA9
BEDvSnpiCZ4AAdkkQKVSZdNxGfE6PT1dQk8hn0kICpoBASAABIAArgnA9UZchweMAwJAAAgA
AQkJQD6TEBQ0AwJAAAgAAVwTgHyG6/CAcUAACAABICAhAchnEoKCZkAACAABIIBrApDPcB0e
MA4IAAEgAAQkJAD5TEJQ0AwIAAEgAARwTQDyGa7DA8YBASAABICAhAQgn0kICpoBASAABIAA
rglAPsN1eMA4IAAEgAAQkJAA5DMJQUEzIAAEgAAQwDUByGe4Dg8YBwSAABAAAhISgHwmISho
BgSAABAAArgmAPkM1+EB44AAEAACQEBCApDPJAQFzYAAEAACQADXBCCf4To8YBwQAAJAAAhI
SADymYSgoBkQAAJAAAjgmgDkM1yHB4wDAkAACAABCQn8HwL7gNUOkpinAAAAAElFTkSuQmCC

--------------6A85DB7A049569C5865C19A1--

--------------1486DA81EF25CBD7D6DED5B0--


--===============4272814024555669480==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4272814024555669480==--

