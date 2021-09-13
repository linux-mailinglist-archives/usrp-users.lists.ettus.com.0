Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6E7409F17
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 23:28:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE2F5384CD8
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 17:28:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B16hokqz";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id ED561384CA3
	for <usrp-users@lists.ettus.com>; Mon, 13 Sep 2021 17:27:14 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id m21so12303626qkm.13
        for <usrp-users@lists.ettus.com>; Mon, 13 Sep 2021 14:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=LyMvKj3sdU3BdmeFZNJChgMw166UWhkutjLSq4s1BNU=;
        b=B16hokqz2/B4LYDGVOunxWssfZOepakY2uw//28CjFNoywk+MBeHVPi8CbdP+hVc3b
         3IAyXOFvRs5/kqOeWs4aQqSkNGo/WwtrpUREwUJ1QiCJKDmzZkjrDogSatJxrHGBb48O
         8je6pJbSbxajaNOzCz7l0dnem2qB9qSIrXfpzUh4dH5s9TFKG4bc5GOigUcLcHqg9PUV
         hD8WqiWjWL4meBZCjRHbsKEWclHU0YbzokD3KVDahSjyPsptNN6207+/7DU1w2LeRf+f
         lXoa7FhMjeePlFUdpaZ+jFcpCTnK7xeq5SWBcF6jJpXkBH2ccbj7Rt4ag6+AtkiGzMgB
         L10g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=LyMvKj3sdU3BdmeFZNJChgMw166UWhkutjLSq4s1BNU=;
        b=fac3tD/MZ1mE214zwUYa730QW5vbofg0UABz1kp4BP1J1M6GspFnJPslMTzD5ZQDww
         4AzHeb+fEAsA0BeD1cVb6wE6BMo7yn6v7MGxFpp7ycjfdVtbC+EcKJdckvi0JyPvOLt3
         xuYPbT1Dc+zvHZNtLKoxNOdws6y9/KMkRkoOPOIzmsoeMsO/B9hFQitx/jqhw6tOcz/P
         zHgjfnRvfFz7qbAKC8gU4poiinnlNLodr+xXROSctP0c7A5l5I7IQCm7tkvAx2Jium4x
         utMaDBJ8x7E4gT53ODIUm7VXU4mNJj8wWr67GxLxW5WwFukdgxo3UYwG+GuCDczbNH02
         Z+rw==
X-Gm-Message-State: AOAM530wzTcFb+GZnvWcgcg1td2un2jvhGOKsc3XXJZkk+kTxTpYExuo
	RlR6d0hkxHnD+eiXhjhxt8y/7wb3kYY/kQ==
X-Google-Smtp-Source: ABdhPJzO1NxCJJAvDbK2w5Od02SgK1Tl2ZtjDcujJ7qQbHsFm2iq2XCoYpB0437l4xnHNazTIbiHVA==
X-Received: by 2002:a05:620a:702:: with SMTP id 2mr1748656qkc.7.1631568434230;
        Mon, 13 Sep 2021 14:27:14 -0700 (PDT)
Received: from [192.168.2.211] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id j184sm6323859qkd.74.2021.09.13.14.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 14:27:13 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es>
 <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com>
 <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com>
 <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com>
 <804336125.2658048.1631299169124@mail.yahoo.com>
 <32b873e4-404d-2b27-61d9-2dd53fd0689a@gmail.com>
 <899213065.2697497.1631311503116@mail.yahoo.com>
 <6b46431b-cf2a-4796-c707-cce4ea524c6a@gmail.com>
 <1529290832.2403454.1631339791541@mail.yahoo.com>
 <1b1061ac-8a1f-2009-f5a7-19b58c532fd5@gmail.com>
 <410306297.2886349.1631467905488@mail.yahoo.com>
 <ca9cac4c-71ce-7887-cf52-3e0d36d45d28@gmail.com>
 <2078480465.2919564.1631489465910@mail.yahoo.com>
 <a5bbd7fe-af0d-e07a-6d8d-ee0b4b4d758a@gmail.com>
 <1147615870.3118228.1631562697777@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <bdb2c1a4-34ef-de6c-4deb-68d61e3dc998@gmail.com>
Date: Mon, 13 Sep 2021 17:27:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1147615870.3118228.1631562697777@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: VVIO6AUIETNOUVHBS6KVOBGZDORP26BI
X-Message-ID-Hash: VVIO6AUIETNOUVHBS6KVOBGZDORP26BI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Configure send_buff_size in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VVIO6AUIETNOUVHBS6KVOBGZDORP26BI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3678120917482107009=="

This is a multi-part message in MIME format.
--===============3678120917482107009==
Content-Type: multipart/alternative;
 boundary="------------61EA8D18AF481DC864FABE5E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------61EA8D18AF481DC864FABE5E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-13 3:51 p.m., zhou wrote:
> Hi Marcus,
>
> I am not seeking buffer change in USRP after your explanation in the=20
> previous email. I am trying to adjust the host-side buffer to see if=20
> it can help.
>
> As per your suggestion, I have tried getsockopt() to see what the send=20
> buffer size is for a UDP socket.
>
> //check buffer size before changing send_buff_size
> getsockopt(); ---> send buffer size =3D 33554432
>
> //change send_buffer_size
> stream_args_tx.args["send_buff_size"] =3D std::to_string(5000000);
> tx_stream =3D usrp->get_tx_stream(stream_args_tx);
>
> //check buffer size again
> getsockopt();=C2=A0 --->=C2=A0send buffer size =3D 33554432
>
> 33554432 is the value I configured in sysctl.=C2=A0 It seemed that=20
> send_buff_size didn't take effect.
>
> However, I could use setsockopt() to modify buffer size, but this=20
> didn't change my test result either - still only 4 packets were buffere=
d.
>
>
>
Right, because the sysctl option sets the MAX amount of memory dedicated=20
to network buffers--it sets an upper limit on what you can ask for
 =C2=A0 in setsockopt().

Again, if you are using timed sends, the packets must necessarily live=20
on the USRP device prior to being sent.=C2=A0 So, you're limited to howev=
er much
 =C2=A0 is on the USRP.

--------------61EA8D18AF481DC864FABE5E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-13 3:51 p.m., zhou wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1147615870.3118228.1631562697777@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpaf44f4f9yahoo-style-wrap" style=3D"font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I am not seeking buffer
          change in USRP after your explanation in the previous email. I
          am trying to adjust the host-side buffer to see if it can
          help.<br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">As per your suggestion, I
          have tried g<span><span style=3D"color: rgb(38, 40, 42);
              font-family: Helvetica Neue, Helvetica, Arial,
              sans-serif;">etsockopt() to see what the <span>send
                buffer size is for a UDP socket.</span></span></span></di=
v>
        <div><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span>//check buffer
              size before changing send_buff_size</span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span>getsockopt();=C2=
=A0
              ---&gt;=C2=A0<span>send buffer size =3D 33554432</span></sp=
an><br>
          </span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span><br>
            </span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span>//change
              send_buffer_size</span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span><span><span st=
yle=3D"background-color: rgb(253, 253, 252); color: rgb(0, 0, 0); font-fa=
mily: monospace, fixed; white-space: pre-wrap;">stream_args_tx.args[</spa=
n><span class=3D"ydp2778bee4yiv7630467964ydp326b50e8stringliteral" style=3D=
"font-family: monospace, fixed; white-space: pre-wrap; color: rgb(0, 32, =
128);">"send_buff_size"</span><span style=3D"background-color: rgb(253, 2=
53, 252); color: rgb(0, 0, 0); font-family: monospace, fixed; white-space=
: pre-wrap;">] =3D std::to_string(5000000);</span></span><br>
            </span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span>tx_stream =3D
            usrp-&gt;get_tx_stream(stream_args_tx);</span><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><br>
          </span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span>//check buffer size
            again</span></div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rgb(0,=
 0,
              0); font-family: Helvetica Neue, Helvetica, Arial,
              sans-serif;">getsockopt();=C2=A0 ---&gt;=C2=A0send buffer s=
ize =3D
              33554432<br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rgb(0,=
 0,
              0); font-family: Helvetica Neue, Helvetica, Arial,
              sans-serif;"><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rgb(0,=
 0,
              0); font-family: Helvetica Neue, Helvetica, Arial,
              sans-serif;"><span><span style=3D"color: rgb(0, 0, 0);
                  font-family: Helvetica Neue, Helvetica, Arial,
                  sans-serif;">33554432 is the value I configured in
                  sysctl.=C2=A0 It seemed that <span><span style=3D"color=
: rgb(0, 32, 128); font-family: monospace, fixed; white-space: pre-wrap;"=
>send_buff_size </span></span>didn't
                  take effect.</span></span><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rgb(0,=
 0,
              0); font-family: Helvetica Neue, Helvetica, Arial,
              sans-serif;"><span><span style=3D"color: rgb(0, 0, 0);
                  font-family: Helvetica Neue, Helvetica, Arial,
                  sans-serif;"><br>
                </span></span></div>
            <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rgb(0,=
 0,
              0); font-family: Helvetica Neue, Helvetica, Arial,
              sans-serif;"><span><span style=3D"color: rgb(0, 0, 0);
                  font-family: Helvetica Neue, Helvetica, Arial,
                  sans-serif;">However, I could use=C2=A0<span><span
                      style=3D"color: rgb(38, 40, 42); font-family:
                      Helvetica Neue, Helvetica, Arial, sans-serif;">sets=
ockopt()=C2=A0
                      to modify buffer size, but this didn't change my
                      test result either - still only 4 packets were
                      buffered.</span></span></span></span></div>
            <div><br>
            </div>
          </div>
          <div dir=3D"ltr" data-setdir=3D"false"><br>
          </div>
          <br>
        </div>
      </div>
    </blockquote>
    Right, because the sysctl option sets the MAX amount of memory
    dedicated to network buffers--it sets an upper limit on what you can
    ask for<br>
    =C2=A0 in setsockopt().=C2=A0 <br>
    <br>
    Again, if you are using timed sends, the packets must necessarily
    live on the USRP device prior to being sent.=C2=A0 So, you're limited=
 to
    however much<br>
    =C2=A0 is on the USRP.=C2=A0 <br>
  </body>
</html>

--------------61EA8D18AF481DC864FABE5E--

--===============3678120917482107009==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3678120917482107009==--
