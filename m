Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2CAA3A506
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 19:13:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B73F3385DC1
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 13:13:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739902406; bh=MdLAQd+UALkz1E25q9MFd+r3jDjQUSjj1jAmYNXgr5E=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=IaDiWAQVu6NoNr53JPKgMCNCWoMl4qV0wAv8bHkyKHi4P2q+askL6RHTG0GrDYuM5
	 qh+wF7+X9I4usGQSR8pzI/wxpfhPN2JEsoU3xu9geZkR7ZXBsv1x9fLTpkjSfqhVSQ
	 3HQ2IH0OWbZefuarYVrxKI6ac6OZl7J8qbZefsxWi2tMGWQzVtgQDJLYwKJ2GgrYZ1
	 6E9qXsscXHeHp65SWkKdHkqDX6IlCZDCWRYT8QUuxu6uuJsSuRyAvRhPj9bKVO35/0
	 98MLxaHIJb2l4qILLVog4iOaW6ByS8+uJtAOfPalFpW0u0gIjAARQCvS4eh5knNPlu
	 +WMWButA5jW0Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9FCD5385DF8
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 13:12:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739902355; bh=R1rJA5XxZ7Kavw0aPUEl1BGkyBVqDw94ypNlEbAW/wo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=wf+JHcmGip0OxYuG3DQVHkSKaRg4TkqoMR6haVTDl4+uvEhbnMLAr3B75XuVx67cA
	 XzGs9d5/GJAxXZdaZNVk8eNVtNbDBt1kg72UlrJSg7IVHyJruju76xyVS6VgL3vkTB
	 OEmpTTHO95PbIxdXxYhaQ3dJLfoKUpfiJbCaZcVwbzfSdk6YMYTvIAA5oy1kikaq7M
	 V0sMTK90ZXy6qcFUXo117+8BRZcyKX5zeDPON1F35MOQZ/5KR1VZ6w9J5oLBBiBeQ4
	 rk3gzHsnVlKHgiHU2Cc6hUxdXfUThfuWesmhDjaYAY+L+pNZQ2aqiLK8DpgfKR5ePp
	 9KS35ZvnR6M9A==
Date: Tue, 18 Feb 2025 18:12:35 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <skicwKnSrNpKVg2vbMQ2wDRtQpgJHUz9FnO1xx8IU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A7yjiaOvYmam-O0eRz0bwmychFUVgN0jUTrUt_-zuznDQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: UOXRJEBOX5OR457FEFUWB6F5YEYWSNJY
X-Message-ID-Hash: UOXRJEBOX5OR457FEFUWB6F5YEYWSNJY
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UOXRJEBOX5OR457FEFUWB6F5YEYWSNJY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8984709068253160319=="

This is a multi-part message in MIME format.

--===============8984709068253160319==
Content-Type: multipart/alternative;
 boundary="b1_skicwKnSrNpKVg2vbMQ2wDRtQpgJHUz9FnO1xx8IU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_skicwKnSrNpKVg2vbMQ2wDRtQpgJHUz9FnO1xx8IU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Martin,

I don=E2=80=99t fully understand you comment about it not being the block=
 controller. (bear with as I am not super experienced)

At the moment I have not trapped a timeout exception just yet (see snippe=
t below).  It could well be somewhere else in the application as you say.

---

```
        try
```

```
        {
```

```
            lock_mutex();
```

```
            // Write to the calculated address
```

```
            siggen_block->regs().poke32(address, data->data[0]);
```

```
            unlock_mutex();
```

```
            lnx_uhd_status =3D true;
```

```
        }
```

```
        catch(const uhd::op_timeout& e)
```

```
        {
```

```
            std::cerr << "Write exception: " <<  e.what() << '\n';
```

```
        }
```

```
        catch(const std::exception& e)
```

```
        {
```

```
            std::cerr << "Write exception: " <<  e.what() << '\n';
```

```
            unlock_mutex();
```

```
        }
```

---

If you don=E2=80=99t mind, regarding David=E2=80=99s email above (points =
2 and 3) could you comment on these

For point 2. this makes sense to me, would you also recommend the same?

for point 3.  After setting up the LO, I am checking the lock flags in a =
loop with a time-out, after which I clear the command time:-     radio_ct=
rl\[radio_id\]->clear_command_time(0); =20

Thank you for your time.

cheers,

Marino

--b1_skicwKnSrNpKVg2vbMQ2wDRtQpgJHUz9FnO1xx8IU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Martin,</p><p>I don=E2=80=99t fully understand you comment about it n=
ot being the block controller. (bear with as I am not super experienced)</p=
><p>At the moment I have not trapped a timeout exception just yet (see snip=
pet below).  It could well be somewhere else in the application as you say.=
</p><p><br></p><div contenteditable=3D"false" class=3D""><hr></div><pre><co=
de>        try</code></pre><pre><code>        {</code></pre><pre><code>    =
        lock_mutex();</code></pre><pre><code>            // Write to the ca=
lculated address</code></pre><pre><code>            siggen_block-&gt;regs()=
.poke32(address, data-&gt;data[0]);</code></pre><pre><code>            unlo=
ck_mutex();</code></pre><pre><code>            lnx_uhd_status =3D true;</co=
de></pre><pre><code>        }</code></pre><pre><code>        catch(const uh=
d::op_timeout&amp; e)</code></pre><pre><code>        {</code></pre><pre><co=
de>            std::cerr &lt;&lt; "Write exception: " &lt;&lt;  e.what() &l=
t;&lt; '\n';</code></pre><pre><code>        }</code></pre><pre><code>      =
  catch(const std::exception&amp; e)</code></pre><pre><code>        {</code=
></pre><pre><code>            std::cerr &lt;&lt; "Write exception: " &lt;&l=
t;  e.what() &lt;&lt; '\n';</code></pre><pre><code>            unlock_mutex=
();</code></pre><pre><code>        }
<br></code></pre><div contenteditable=3D"false" class=3D""><hr></div><p><br=
></p><p>If you don=E2=80=99t mind, regarding David=E2=80=99s email above (p=
oints 2 and 3) could you comment on these</p><p>For point 2. this makes sen=
se to me, would you also recommend the same?</p><p>for point 3.  After sett=
ing up the LO, I am checking the lock flags in a loop with a time-out, afte=
r which I clear the command time:-     radio_ctrl[radio_id]-&gt;clear_comma=
nd_time(0);  </p><p><br></p><p>Thank you for your time.</p><p><br></p><p>ch=
eers,</p><p>Marino</p>

--b1_skicwKnSrNpKVg2vbMQ2wDRtQpgJHUz9FnO1xx8IU--

--===============8984709068253160319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8984709068253160319==--
